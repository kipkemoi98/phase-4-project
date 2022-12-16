class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :hubs,through: :reviews
  has_secure_password
  validates :name, presence: true, uniqueness: true
end
