class CreateTopArticlePerforms < ActiveRecord::Migration
  def change
    create_table :top_article_performs do |t|
      t.string :date
      t.decimal :valu
      
      t.timestamps null: false
    end
  end
end
