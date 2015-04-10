class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.decimal :total, :precision => 5, :scale => 2
      t.string :status

      t.timestamps
    end
    add_index :orders, :user_id
  end
end
