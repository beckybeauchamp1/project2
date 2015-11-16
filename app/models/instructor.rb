class Instructor < ActiveRecord::Base
  has_many :retreats
  has_many :users, through: :retreats
end
