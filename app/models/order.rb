class Order < ApplicationRecord

has_many :order_details
belongs_to :customer, dependent: :destroy

enum payment_method: {
  クレジットカード: 0,
  銀行振込: 1
}

end