class AddStockNameIdToTotalEarnings < ActiveRecord::Migration
  def change
    add_column :total_earnings, :stock_name_id, :integer
    add_column :weekly_earnings, :stock_name_id, :integer
  end
end
