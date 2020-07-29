class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :img
  has_many :recipes
end
