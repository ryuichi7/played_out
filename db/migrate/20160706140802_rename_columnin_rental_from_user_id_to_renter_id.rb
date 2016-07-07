class RenameColumninRentalFromUserIdToRenterId < ActiveRecord::Migration
  def change
    rename_column :rentals, :user_id, :renter_id
  end
end
