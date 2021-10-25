class OrderDetail < ApplicationRecord
    enum making_status: {
        入金待ち: 0,
        入金確認: 1,
        製作中: 2,
        発送準備中: 3,
        発送済み: 4
    }

    belongs_to :product
    belongs_to :order
    # def order_status_auto_update
    #     if self.making_status == "製作中です"
    #     self.order.update(status:"製作中です")
    #     end
    # end
end