class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  belongs_to :User

  validates :image_name, presence: true

end
