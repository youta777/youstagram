class Photo < ApplicationRecord
  belong_to :post

  validates :image, presence: true
end
