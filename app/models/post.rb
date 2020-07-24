class Post < ApplicationRecord
  belong_to :user
  has_many :photos, dependent: :destroy
end
