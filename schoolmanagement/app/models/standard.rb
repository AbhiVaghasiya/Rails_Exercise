class Standard < ApplicationRecord
  has_many :standards_teacher
  has_many :teachers, through: :standard_teachers

  validates :name, presence: true
end
