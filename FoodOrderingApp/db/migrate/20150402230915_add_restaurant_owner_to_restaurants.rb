class AddRestaurantOwnerToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :restaurant_owner_id, :integer
  end
end
