class OrderDetail < ApplicationRecord
    # enum making_statuses:{制作不可能:0,制作準備中です:1,製作中です:2,制作完了です:3}
    belongs_to :product
    belongs_to :order
    # def order_status_auto_update
    #     if self.making_status == "製作中です"
    #     self.order.update(status:"製作中です")
    #     end
    # end
end
