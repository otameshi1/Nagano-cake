class Product < ApplicationRecord
    
    has_many :genres
    # ,optional: true
    has_many :order_details
    has_many :cartitems
    
    attachment :image
  
    
end
