class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :postage
      t.integer :customer_id
      t.string :addresses_name
      t.string :postal_code
      t.integer :postage
      t.integer :total_payment
      t.integer :order_status
      t.integer :payment_method
      t.timestamps
    end
  end
end
