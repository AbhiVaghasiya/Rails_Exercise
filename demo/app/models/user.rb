class User < ApplicationRecord
  validates :name, :role, presence: true
  validates :email
  validates :gender, inclusion: { in: %w( M , F ), message: "only allows M or F" }
  validates :mobile, length: { minimum: 12 , maximum: 15 }
  validates :password, confirmation: true, unless: -> { password.blank? }
end
