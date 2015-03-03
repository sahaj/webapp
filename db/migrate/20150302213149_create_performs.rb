class CreatePerforms < ActiveRecord::Migration
  def change
    create_table :performs do |t|
      t.string :date
      t.integer :value

      t.timestamps null: false
    end
  end
end
