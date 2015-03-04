class CreateTableStockName < ActiveRecord::Migration
  def change
    create_table :stock_names do |t|
    	t.string :s_id
    	t.string :old_id
      	t.string :s_name

    end
  end
end
