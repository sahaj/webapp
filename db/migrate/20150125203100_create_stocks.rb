class CreateStocks < ActiveRecord::Migration
  def up
    create_table :stocks do |t|
      t.string :name
      t.string :date
      t.decimal :open, precision: 4, scale: 2
      t.decimal :high, precision: 4, scale: 2
      t.decimal :low, precision: 4, scale: 2
      t.decimal :close, precision: 4, scale: 2
      t.decimal :volume, precision: 4, scale: 2
      t.decimal :adjclose, precision: 4, scale: 2

      t.timestamps null: false
    end
  end

  def down
  	drop_table :stocks
  	drop_table :stock_infos
  end
end
