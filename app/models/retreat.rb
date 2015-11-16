class Retreat < ActiveRecord::Base
  has_many :users
  belongs_to :instructor
  has_many :photos
  has_many :comments
end
