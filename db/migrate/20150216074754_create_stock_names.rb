class CreateStockNames < ActiveRecord::Migration
  def change
    create_table :stock_names do |t|
      t.string :s_id
      t.string :s_name

      t.timestamps null: false
    end
  end
end
