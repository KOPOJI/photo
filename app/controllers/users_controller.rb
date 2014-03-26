class UsersController < ApplicationController
  before_filter :authenticate_user!, only: :profile
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @user }
    end
  end
  def profile
    @user = current_user
  end
end
