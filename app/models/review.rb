class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :rating, presence: true
  validates :rating, numbericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true}

  validates :reason, length: { maxium: 150}
end
