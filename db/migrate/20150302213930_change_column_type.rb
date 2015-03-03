class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :performs, :value, :decimal
  end
end
