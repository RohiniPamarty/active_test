class AlbumsController < ApplicationController
def index
@albums = Album.where(:user_id => current_user.id)
end
def new
@count = Album.count
@album = Album.new
@album = Album.create
end
def create
@album = Album.create(params[:album])
end
end
