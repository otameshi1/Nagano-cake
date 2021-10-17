class Genre < ApplicationRecord
  has_many :products

  validates :name, precense: true
end
