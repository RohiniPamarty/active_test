class AlbumsController < ApplicationController
def index
@albums = Album.where(:user_id => current_user.id)
end
def new
@count = Album.count
@album = Album.new
@album = Album.create
@album.user_id = current_user.id
@album.save
 redirect_to list_album_path(@album)
end
def create
@photos=Photo.where(:album_id => params[:album_id])
@album = Album.where("album_id = ? AND user_id = ?", params[:album_id], current_user.id)

end
def list
@album = Album.find(params[:id])
@photos=Photo.where(:album_id => params[:id])
end
def show
end
end
