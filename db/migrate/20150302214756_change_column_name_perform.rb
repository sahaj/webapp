class ChangeColumnNamePerform < ActiveRecord::Migration
  def change
  	rename_column :performs, :value, :valu
  end
end
