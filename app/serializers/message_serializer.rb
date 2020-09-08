class MessageSerializer < ActiveModel::Serializer
    attributes :content, :user_id, :chatroom_id
   
  end
  