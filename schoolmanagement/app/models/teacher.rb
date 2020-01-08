class Teacher < ApplicationRecord
  has_many :standards_teacher, dependent: :destroy
  has_many :standards, through: :standard_teachers
  has_many :students

  validates :name, presence: true
end
