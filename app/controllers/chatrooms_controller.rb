class ChatroomsController < ApplicationController

    def index
      chatrooms = Chatroom.all
      render json: chatrooms
    end

    def show
      @chatroom = Chatroom.find_by(id: params[:id])
      render json: @chatroom
    end
    
    
    def create 
      # byebug
      chatroom = Chatroom.create(title: params[:title], amtPeople: params[:amtPeople])
      if chatroom.save
        users = chatroom.users

        UsersChatroomsChannel.broadcast_to users, ChatroomSerializer.new(chatroom)
         render json: chatroom
      else
        render json: {error: 'Could not create that message'}, status: 422
      end

    end

    def destroy
    
      chatroom = Chatroom.find_by(id: params[:id])
      chatroom.destroy()
      render json: chatroom
    end


end
