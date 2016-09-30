class Post < ActiveRecord::Base
	belongs_to :user
	mount_uploader :image, ImageUploader
	validates :body, presence: true
	validates :body, length: { maximum: 255 } 
end
