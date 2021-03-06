class Book < ApplicationRecord
  belongs_to :publisher
  has_and_belongs_to_many :authors

  validates :title, presence: true
end
