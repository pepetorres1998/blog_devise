class User < ApplicationRecord
  has_many :article
  validates :first_name, :last_name, presence: true
  validates :phone, numericality: {only_integer: true}, length: {in: 8..12}, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
