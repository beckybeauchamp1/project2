class Instructor < ActiveRecord::Base
  has_many :retreats
  has_many :instructors, through: :retreats
end
