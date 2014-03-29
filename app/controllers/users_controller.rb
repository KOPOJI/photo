class UsersController < ApplicationController
  before_filter :authenticate_user!, only: :profile

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render xml: @user }
    end
  end

  def profile
    @user = current_user
    if request.patch? and @user.profile.update_attributes(profile_params)
      flash.now[:notice] = I18n.t 'Profile updated'
    end
    render action: :show

  end


  private
  def profile_params
    params.require(:profile).permit :name, :interests, :exp, :about_me, :signature, :avatar, :avatar_cache
  end

end
