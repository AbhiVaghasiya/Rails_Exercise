class User < ApplicationRecord
  has_many :images, as: :imageable
  has_many :blogs, dependant: :destroy
  has_many :comments

  validates :name, presence: true
end
