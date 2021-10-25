class Order < ApplicationRecord

has_many :order_details
belongs_to :customer, dependent: :destroy

enum order_status: {
  pay_waiting: 0,
  pay_up: 1,
  making: 2,
  ready_ship: 3,
  shipped: 4
}
# 入金待ち: 0,入金確認: 1,製作中: 2,発送準備中: 3, 発送済み: 4



enum payment_method: {
  クレジットカード: 0,
  銀行振込: 1
}

end