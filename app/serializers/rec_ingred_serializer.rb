class RecIngredSerializer < ActiveModel::Serializer
  attributes :id, :amount, :instruction, :recipe_id, :ingredient_id
end
