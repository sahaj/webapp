class DeleteColumnFromEarning < ActiveRecord::Migration
  def change
  	remove_column :total_earnings, :stock_names_id
  	remove_column :weekly_earnings, :stock_names_id
  end
end
