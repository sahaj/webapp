class RemoveIndex < ActiveRecord::Migration
  def change
  	remove_index :stocks, :s_id

  end
end
