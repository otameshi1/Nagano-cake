class Product < ApplicationRecord
    enum is_sale: { on_sale: 0, off_sale: 1 }
    belongs_to :genre,optional: true
    has_many :order_details
    has_many :cartitems
    
    attachment :image
  
    
end
