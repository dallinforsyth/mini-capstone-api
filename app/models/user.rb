class User < ApplicationRecord
  has_many :users

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
