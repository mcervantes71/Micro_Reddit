class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, length: { in: 4..12 }, presence: true, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[\w+\-.]*\.[a-z]+\z/i }, presence: true, uniqueness: true
  validates :password, length: { in: 6..16 }, presence: true
end
