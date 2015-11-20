class Photo < ActiveRecord::Base
  belongs_to :retreat
  belongs_to :user
  mount_uploader:image, ImageUploader
end
