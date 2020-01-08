class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :description, length: { maximum: 500 }, presence: true

  after_save :notifi_user

  def notifi_user
    puts"comment successfully added"
  end
end
