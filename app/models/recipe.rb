class Recipe < ApplicationRecord
  has_many :reviews
  has_many :rec_ingreds
  has_many :ingredients, through :rec_ingreds
  belongs_to :user
end
