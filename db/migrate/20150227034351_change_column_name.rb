class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :weekly_earnings, :return, :earning
  	rename_column :total_earnings, :return, :earning
  end
end
