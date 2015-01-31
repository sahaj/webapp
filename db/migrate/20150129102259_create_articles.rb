class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
	  t.string :stockname
      t.integer :articleid
      t.decimal :sentiment, precision: 5, scale: 3
      t.string :date
      t.string :title
      t.string :url
      t.timestamps null: false
    end
  end
end
