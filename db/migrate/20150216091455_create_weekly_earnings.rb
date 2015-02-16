class CreateWeeklyEarnings < ActiveRecord::Migration
  def change
    create_table :weekly_earnings do |t|
      t.string :date
      t.string :s_id
      t.string :return

      t.timestamps null: false
    end
  end
end
