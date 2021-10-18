class Product < ApplicationRecord
    enum is_deleted: { on: 0, off: 1 }
    
    belongs_to :genre
    has_many :order_details
    has_many :cartitems
    
    attachment :image
    
end
