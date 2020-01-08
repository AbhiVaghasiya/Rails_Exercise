class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders


  validates :name, presence: true
end
