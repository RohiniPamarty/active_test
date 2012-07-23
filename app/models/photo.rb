class Photo < ActiveRecord::Base
belongs_to :album
has_attached_file :phot, :styles => { :medium => "300x300>", :thumb => "100x100>" }
has_many :userships
has_many :users, :through => :userships
attr_reader :user_tokens, :email
attr_accessible :email, :user_tokens
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
end
