class Album < ApplicationRecord
    attr_accessor :user_id,  :image 
    validates :name, presence: true
    belongs_to :user 
    mount_uploader :image, ImageUploader
end
