class RemoveColumnItemIdfromTypes < ActiveRecord::Migration
  def change
    remove_column :types, :item_id, :integer
  end
end
