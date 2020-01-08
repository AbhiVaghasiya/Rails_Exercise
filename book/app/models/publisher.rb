class Publisher < ApplicationRecord
  has_many :books, dependant: :destroy
  has_many :authers, through: :books

  validates :name, presence: true
end
