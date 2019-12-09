class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 10, maximum: 50 }
end
