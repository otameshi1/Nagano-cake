class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.integer :purchase_price
      t.integer :making_status
      t.timestamps
    end
  end
end
