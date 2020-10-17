class RegistrationsController < ApplicationController
  
    def create 
      # byebug
      image_url = Cloudinary::Uploader.upload(params[:image])
      
        user = User.create!(
            name: params["name"],
            username: params["username"],
            email: params["email"],
            image: image_url["url"], 
            password: params["password"],
            password_confirmation: params["password_confirmation"]
        )

        if user
            session[:user_id] = user.id
            render json: {
              status: :created,
              user: user
            }
          else
            render json: { status: 500 }
          end
    end


end
