class AddDateColumnsToRetreats < ActiveRecord::Migration
  def change
    remove_column :retreats, :date_range
    add_column :retreats, :start_date, :date
    add_column :retreats, :end_date, :date
  end
end
