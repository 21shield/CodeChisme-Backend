class MessageSerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id, :chatroom_id, :username
   
  end
  