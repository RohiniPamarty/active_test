class PhotosController < ApplicationController
def new
@photo=Photo.new

@album = Album.find(params[:album_id])

end
def create
@photo=Photo.create(params[:photo])
@photo.album_id = params[:album_id]
@photo.save
@album = Album.find(params[:album_id])
 redirect_to list_album_path(@album)

#redirect_to albums_path(:album_id => params[:album_id])
end
def index

end
end
