class CreateTotalEarnings < ActiveRecord::Migration
  def change
    create_table :total_earnings do |t|
      t.string :date
      t.string :s_id
      t.string :return

      t.timestamps null: false
    end
  end
end
