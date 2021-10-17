class Cartitem < ApplicationRecord
    belongs_to :customer
    belongs_to :product
    validates :quantity, presense: ture
end
