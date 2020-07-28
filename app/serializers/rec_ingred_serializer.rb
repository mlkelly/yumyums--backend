class RecIngredSerializer < ActiveModel::Serializer
  attributes :id, :amount, :instruction #, :recipe_id, :ingredient_id
  belongs_to :recipe
  belongs_to :ingredient
end
