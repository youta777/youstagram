class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, ununiqueness: { scope: :post_id } # user_idとpost_idの重複禁止
end
