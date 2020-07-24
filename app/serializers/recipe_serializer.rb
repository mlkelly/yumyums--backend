class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :abt, :img, :user_id
end
