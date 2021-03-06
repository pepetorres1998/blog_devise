class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :first_name, :last_name, presence: true
  validates :phone, numericality: {only_integer: true}, length: {in: 8..12}, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
