class Retreat < ActiveRecord::Base
  has_many :attendances
  belongs_to :instructor
  has_many :photos
  has_many :comments
  has_many :attendances
  belongs_to :user
  has_many :users, through: :attendances


  include PgSearch
   multisearchable :against => [:title, :address, :description]

   def self.text_search(query)
     if query.present?
       search(query)
     else
       all
     end
   end
end
