class Student < ApplicationRecord
  belongs_to :standard
  has_many :teachers, through: :standard

  validates :name, presence: true
end
