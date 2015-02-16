class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :date
      t.string :s_id
      t.string :todo

      t.timestamps null: false
    end
  end
end
