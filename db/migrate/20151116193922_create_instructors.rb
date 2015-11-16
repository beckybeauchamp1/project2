class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.string :type_of_yoga_practice
      t.string :city
      t.string :state
      t.string :photo_url
      t.string :description
      t.string :facebook_url
      t.string :email,              null: false, default: ""
      t.timestamps null: false
    end
  end
end
