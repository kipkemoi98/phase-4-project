class Review < ApplicationRecord
  belongs_to :hub
  belongs_to :user
  validates :comment, presence: true
  validates :comment , length: {maximum: 50}
end
