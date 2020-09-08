class ChatroomSerializer < ActiveModel::Serializer
    attributes :id, :title, :amtPeople, :messages
    has_many :messages
  end