class DropStockNameTable < ActiveRecord::Migration
  def change
  	drop_table :stock_names
  end
end
