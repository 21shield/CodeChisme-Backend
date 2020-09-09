class MessagesController < ApplicationController
    def index
      messages = Message.all
      render json: messages
    end
  
    def show
      @message = Message.find_by(id: params[:id])
      render json: @message
    end
      
      
    def create 
      
      message = Message.create(content: params[:content], user_id: params[:user_id], chatroom_id: params[:chatroom_id])

      if message.save
        # message.save
        chatroom = message.chatroom
        user = message.user
        ChatroomChannel.broadcast_to(chatroom, { message: "whatever WE WANT"})
         render json: message
      else
        render json: {error: 'Could not create that message'}, status: 422
      end
    end
end