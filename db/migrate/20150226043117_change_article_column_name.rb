class ChangeArticleColumnName < ActiveRecord::Migration
  def change
  	rename_column :articles, :stockname, :s_id
  	rename_column :stocks, :name, :s_id
  end
end
