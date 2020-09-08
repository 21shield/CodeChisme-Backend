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
        @message = Message.create(content: params[:content], user_id: params[:user_id], chatroom_id: params[:chatroom_id])
        render json: @message
      end
end
