class RecIngred < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :amount, presence: true
  validates :instruction, presence: true
end
