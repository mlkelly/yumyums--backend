class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :reason #, :user_id, :recipe_id
  belongs_to :user
  belongs_to :recipe
end
