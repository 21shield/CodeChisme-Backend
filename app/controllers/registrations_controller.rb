class RegistrationsController < ApplicationController
  
def create 
  # byebug
    user = User.create!(
        name: params["user"]["name"],
        username: params["user"]["username"],
        email: params["user"]["email"],
        image: params["user"]["image"],
        password: params["user"]["password"],
        password_confirmation: params["user"]["password_confirmation"]
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
