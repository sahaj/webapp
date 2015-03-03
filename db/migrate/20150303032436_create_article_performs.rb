class CreateArticlePerforms < ActiveRecord::Migration
  def change
    create_table :article_performs do |t|
      t.string :date
      t.decimal :valu

      t.timestamps null: false
    end
  end
end
