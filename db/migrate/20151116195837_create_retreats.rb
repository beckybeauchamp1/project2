class CreateRetreats < ActiveRecord::Migration
  def change
    create_table :retreats do |t|
      t.string :title
      t.string :address
      t.string :description
      t.daterange :date_range
      t.decimal :cost, precision: 8, scale: 2
      t.references :user, index: true, foreign_key: true
      t.references :instructor, index: true, foreign_key: true
    end
  end
end
