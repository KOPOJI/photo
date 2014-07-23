class SiteController < ApplicationController

  def index
  end

  def gallery
    if params[:album].present?
      @album = Album.find_by_id_and_status(params[:album], true) || Album.find_by_album_url_and_status(params[:album], true)
      @photos = Image.order(id: :desc).find_all_by_album_id_and_status(@album.id, true)
    else
      @albums = Album.find_all_by_status true
    end
  end

  def blog
  end

  def contact
    authorize! :contact, @user unless user_signed_in?
  end
end