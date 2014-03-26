class SiteController < ApplicationController
  def index
  end

  def gallery
    if params[:album].present?
      @album = Album.find_by_id_and_status(params[:album], 1) || Album.find_by_album_url_and_status(params[:album], 1)
      @photos = Image.find_all_by_albums_id_and_status @album.id, 1
    else
      @albums = Album.find_all_by_status 1
    end
  end

  def blog
  end

  def contact
  end
end