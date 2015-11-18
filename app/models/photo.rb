class Photo < ActiveRecord::Base
  belongs_to :retreat
  mount_uploader:image, ImageUploader
end
