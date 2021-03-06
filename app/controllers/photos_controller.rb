class PhotosController < ApplicationController
autocomplete :tag, :name, :class_name => 'ActsAsTaggableOn::Tag'

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
def show
@photo = Photo.find(params[:id])
end
def tags
  @tags = Photo.all_tag_counts.(:conditions => ["#{ActsAsTaggableOn::Tag.table_name}.name LIKE ?", "%#{params[:q]}%"])
  respond_to do |format|
    format.json { render :json => @tags.collect{|t| {:id => t.id, :name => t.email } }}
  end  
end
def update
@photo= Photo.find(params[:id])
@photo.update_attributes(params[:photo])
end

end
