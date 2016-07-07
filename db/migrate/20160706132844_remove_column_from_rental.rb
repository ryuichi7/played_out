class RemoveColumnFromRental < ActiveRecord::Migration
  def change
    remove_column :rentals, :duration, :integer
  end
end
