class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :weekly_earnings, :stock_name_id
  	remove_column :total_earnings, :stock_name_id
  end
end
