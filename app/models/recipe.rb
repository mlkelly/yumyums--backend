class Recipe < ApplicationRecord
  has_many :reviews
  has_many :rec_ingreds
  has_many :ingredients, through :rec_ingreds
  belongs_to :user

  validates :title, presence: true
  validates :title, length: { maximum: 30, message: "Title is too long, needs to be less 30 characters or less in length" }

  validates :abt, presence: true
  validates :abt, length: { maximum: 150}
  
end
