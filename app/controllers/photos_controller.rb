class PhotosController < ApplicationController
def new
@photo=Photo.new
#@album = Album.find(params[:album_id])
end
def create
@photo=Photo.create(params[:photo])
@photo.album_id = params[:album_id]
@photo.save
end
def index

end
end
