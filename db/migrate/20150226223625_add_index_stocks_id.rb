class AddIndexStocksId < ActiveRecord::Migration
  def change
  	add_index :stocks, :s_id
  end
end
