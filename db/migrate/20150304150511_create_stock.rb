class CreateStock < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :s_id
      t.string :date
      t.decimal :adjclose, precision: 8, scale: 4
    end
  end
end
