class Listing < ActiveRecord::Base
  has_attached_file :image
  has_many :pictures
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  validates :title, :presence => true
  validates :info, :presence => true
  validates :location, :presence => true
end
