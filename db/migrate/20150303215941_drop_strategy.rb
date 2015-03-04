class DropStrategy < ActiveRecord::Migration
  def change
  	drop_table :strategies
  end
end
