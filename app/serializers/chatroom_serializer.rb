class ChatroomSerializer < ActiveModel::Serializer
    attributes :id, :title, :amtPeople, :messages, :users
    has_many :messages
  end