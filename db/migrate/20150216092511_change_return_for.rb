class ChangeReturnFor < ActiveRecord::Migration
  def change
  	change_column :total_earnings, :return, :decimal
  end
end
