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
      @chatroom = Chatroom.create(title: params[:title], amtPeople: params[:amtPeople])
      render json: @chatroom
    end

    def destroy
    
      chatroom = Chatroom.find_by(id: params[:id])
      chatroom.destroy()
      render json: chatroom
    end


end
