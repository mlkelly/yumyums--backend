class RecIngredSerializer < ActiveModel::Serializer
  attributes :id, :amount, :instruction, :ingredient_id #, :recipe_id
  belongs_to :recipe
  belongs_to :ingredient
end
