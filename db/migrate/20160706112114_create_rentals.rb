class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.float :price
      t.integer :duration
      t.integer :user_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
