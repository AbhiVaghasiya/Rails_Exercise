class Product < ApplicationRecord
  belongs_to :brand
  has_many :orders_product
  has_many :orders, through: :order_products

  validates :name, :brand, presence: true
end
