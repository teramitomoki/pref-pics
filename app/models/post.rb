class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :prefecture47
  has_one_attached :image

  validates :prefecture47_id,  numericality: { other_than: 1 , message: "選択してください" }
  validates :genre_id, numericality: { other_than: 1 , message: "選択してください" }
  validates :image,    presence: true
  validates :user_id,  presence: true
  validates :title,    presence: true

end
