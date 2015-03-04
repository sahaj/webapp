class CreateStrategy < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :date
      t.string :s_id
      t.string :todo
      t.belongs_to :stock_names, index: true

    end
  end
end
