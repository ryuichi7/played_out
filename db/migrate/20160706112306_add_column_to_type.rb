class AddColumnToType < ActiveRecord::Migration
  def change
    add_column :types, :item_id, :integer
  end
end
