class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :img
end
