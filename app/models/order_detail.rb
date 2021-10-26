class OrderDetail < ApplicationRecord
    belongs_to :order
    belongs_to :product
    
    enum making_status: {
        unintentional: 0,
        waiting_product: 1,
        in_preparation: 2,
        making_complete: 3,
    }
    # 制作不可: 0,制作待ち: 1,製作中: 2,製作完了": 3

end