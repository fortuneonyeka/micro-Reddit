class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 6..20 }
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true
  validates :email, presence: true

  has_many :posts
  has_many :comments
end
