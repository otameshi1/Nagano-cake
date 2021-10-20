class Customer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy
  has_many :orders
  has_many :cartitems

  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  validates :postal_code, presence: true
  validates :phone_number, presence: true #length: { in: 10..11 }
  validates :address, presence: true

  def full_name
    first_name + last_name
  end

end

