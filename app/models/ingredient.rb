class Ingredient < ApplicationRecord
    has_many :rec_ingreds 
    has_many :recipes, through :rec_ingreds
end
