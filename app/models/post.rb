class Post < ApplicationRecord

  validates :prefecture_id, numericality: { other_than: 1 }
  validates :genre_id,      presence: true
  validates :image,         presence: true
  validates :user_id      , presence: true

  belongs_to :user
  belongs_to :prefecture
  belongs_to :genre
  has_one_attached :image

end
