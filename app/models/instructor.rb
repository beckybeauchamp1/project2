class Instructor < ActiveRecord::Base
  has_many :retreats
  has_many :users, through: :retreats

   def self.text_search(query)
     if query.present?
       search(query)
     else
       all
     end
   end
end
