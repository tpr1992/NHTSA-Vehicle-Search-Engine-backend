class User < ApplicationRecord
  has_many :favorites
  has_many :cars, through: :favorites
  validates :username, uniqueness: true
  has_secure_password
end
