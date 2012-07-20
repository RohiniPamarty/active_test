class AlbumsController < ApplicationController
def index
@albums = Album.where(:user_id => current_user.id)
end
def new
@album = Album.new
end
def create
@album = Album.create(params[:album])
end
end
