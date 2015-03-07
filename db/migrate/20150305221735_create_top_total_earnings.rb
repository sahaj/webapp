class CreateTopTotalEarnings < ActiveRecord::Migration
  def change
    create_table :top_total_earnings do |t|
      t.string :date
      t.string :s_id
      t.decimal :earning
      
      t.timestamps null: false
    end
  end
end
