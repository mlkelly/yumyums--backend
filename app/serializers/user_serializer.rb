class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :img
  has_many :recipes
end
