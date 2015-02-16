class ChangeReturnFormat < ActiveRecord::Migration
  def change
  	change_column :weekly_earnings, :return, :decimal
  end
end
