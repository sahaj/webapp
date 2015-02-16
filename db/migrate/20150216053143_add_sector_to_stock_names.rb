class AddSectorToStockNames < ActiveRecord::Migration
  def change
    add_column :stock_names, :sector, :string
  end
end
