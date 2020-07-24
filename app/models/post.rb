class Post < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy # 投稿が削除されたら関連するいいねも削除

  accepts_nested_attributes_for :photos
end
