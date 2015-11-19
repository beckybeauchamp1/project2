class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :retreats
   has_many :instructors, through: :retreats
   has_many :registrations
   has_many :registered_retreats, through: :registrations, source: :retreat, class_name: "Retreat"
   mount_uploader:image, ImageUploader
end
