class AddIndexStockName < ActiveRecord::Migration
  def change
  	add_index :stock_names, :s_id
  end
end
