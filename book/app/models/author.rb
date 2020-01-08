class Author < ApplicationRecord
  has_and_belongs_to_many :books
  has_many :publishers, through: :books

  validates :name, presence: true
end
