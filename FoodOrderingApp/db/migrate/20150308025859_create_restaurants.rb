class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :email
      t.string :telephone
      t.text :service_hours
      t.text :description

      t.timestamps
    end
  end
end
