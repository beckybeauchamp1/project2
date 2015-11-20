class Attendance < ActiveRecord::Base
  belongs_to :retreat
  belongs_to :user
  
end
