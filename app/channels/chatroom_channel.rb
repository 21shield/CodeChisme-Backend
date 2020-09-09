class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  
    chatroom = Chatroom.find_by(title: params[:chatroomName])
    stream_for chatroom
  end

  def unsubscribed
    puts "UNSUBSCRIBED" * 10
    # Any cleanup needed when channel is unsubscribed
  end
end
