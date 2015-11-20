class Retreat < ActiveRecord::Base
  has_many :attendances
  belongs_to :instructor
  has_many :photos
  has_many :comments
  has_many :attendances
  belongs_to :user
  has_many :users, through: :attendances


  include PgSearch
   multisearchable :against => [:title, :address, :description, :cost, :start_date, :end_date]

   def self.text_search(query)
     if query.present?
       where("title @@ :q or address @@ :q, description @@ :q", q: query)
     else
       Retreat.none
     end
   end
end
