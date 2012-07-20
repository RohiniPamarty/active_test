class Photo < ActiveRecord::Base
belongs_to :album
has_attached_file :phot, :styles => { :medium => "300x300>", :thumb => "100x100>" }
acts_as_taggable
end
