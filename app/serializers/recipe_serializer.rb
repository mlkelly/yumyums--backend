class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :abt, :img #, :user_id
  belongs_to :user
  has_many :rec_ingreds
end
