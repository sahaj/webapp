class CreateTopPerforms < ActiveRecord::Migration
  def change
    create_table :top_performs do |t|
      t.string :date
      t.decimal :valu

      t.timestamps null: false
    end
  end
end
