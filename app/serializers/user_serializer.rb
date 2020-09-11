class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :messages, :image
  has_many :messages
end
