class Retreat < ActiveRecord::Base
  has_many :registration
  belongs_to :instructor
  has_many :photos
  has_many :comments
  has_many :registrations
  belongs_to :user
  has_many :users, through: :registrations
end
