class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :retreat, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
