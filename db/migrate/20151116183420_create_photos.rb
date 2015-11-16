class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :photo_url
      t.string :description
      t.references :retreat, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
