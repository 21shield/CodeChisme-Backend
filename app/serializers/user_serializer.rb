class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :messages
  has_many :messages
end
