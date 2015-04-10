class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :restaurant
      t.string :name
      t.float :price
      t.text :description

      t.timestamps
    end
    add_index :menu_items, :restaurant_id
  end
end
