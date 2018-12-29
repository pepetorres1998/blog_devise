class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates :title, :content, :category_id, :user_id, presence: true
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
end
