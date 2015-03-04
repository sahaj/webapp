class AddIndexToTables < ActiveRecord::Migration
  def change
  	add_index :weekly_earnings, :date
  	add_index :total_earnings, :date
  	add_index :stocks, :s_id
  end
end
