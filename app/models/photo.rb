class Photo < ApplicationRecord
  belong_to :post

  validates :image, presence: true

  # アップローダーの紐づけ
  mount_uploader :image, ImageUploader
end
