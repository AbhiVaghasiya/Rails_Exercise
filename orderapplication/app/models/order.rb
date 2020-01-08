class Order < ApplicationRecord
  belongs_to :user
  has_many :orders_product
  has_many :products, through: :order_products

  before_validation :set_date

  def set_date
    self.date = Time.now if self.date.blank?
  end

  validates :total_price, presence: true
end
