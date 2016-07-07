class ChangeColumnNameinItem < ActiveRecord::Migration
  def change
    rename_column :items, :name, :make
  end
end
