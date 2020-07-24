class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :reason, :user_id, :recipe_id
end
