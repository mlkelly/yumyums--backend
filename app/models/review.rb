class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5} }

  validates :reason, length: { maximum: 150 }
end
