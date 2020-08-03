class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :img
  has_many :recipes
  has_many :rec_ingreds, through: :recipes
end
