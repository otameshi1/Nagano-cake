class Product < ApplicationRecord
    
    belongs_to :genre
    has_many :order_details
    has_many :cartitems
    
    attachment :image
    
end
