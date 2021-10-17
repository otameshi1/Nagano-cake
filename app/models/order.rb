class Order < ApplicationRecord

has_many :ordered_detail
belongs_to :customers,depedent: :destroy

end
