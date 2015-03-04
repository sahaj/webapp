class AddStockNameRefToWeeklyEarning < ActiveRecord::Migration
  def change
    add_reference :weekly_earnings, :stock_names, index: true
    add_foreign_key :weekly_earnings, :stock_names
    add_reference :total_earnings, :stock_names, index: true
    add_foreign_key :total_earnings, :stock_names
  end
end
