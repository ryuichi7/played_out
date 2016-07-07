class RenameColumnInRental < ActiveRecord::Migration
  def change
    rename_column :rentals, :price, :price_per_day
  end
end
