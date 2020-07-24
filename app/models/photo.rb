class Photo < ApplicationRecord
  belongs_to :post

  validates :image, presence: true

  # アップローダーの紐づけ
  mount_uploader :image, ImageUploader
end
