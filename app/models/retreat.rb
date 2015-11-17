class Retreat < ActiveRecord::Base
  belongs_to :user
  belongs_to :instructor
  has_many :photos
  has_many :comments
end
