class PhotosController < ApplicationController
def new
@photo=Photo.new
end
def create
@photo=Photo.create(params[:photo])
end
def index

end
end
