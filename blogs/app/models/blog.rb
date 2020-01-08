class Blog < ApplicationRecord
  has_many :images, as: :imageable
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :description, length: { maximum: 500 }, allow_blank: false

  after_validation :set_comment

  def set_comment
    puts "comment successfully added"
  end
end
