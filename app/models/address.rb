class Address < ApplicationRecord
  belongs_to :customer

  validates :name, precense: true
  validates :postal_code, precense: true
  validates :address, precense: true

end
