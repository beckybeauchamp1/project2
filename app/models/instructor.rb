class Instructor < ActiveRecord::Base
  has_many :retreats
  has_many :users, through: :retreats

  include PgSearch
  multisearchable :against => [:firstname, :lastname, :city, :state, :type_of_yoga_practice]

end
