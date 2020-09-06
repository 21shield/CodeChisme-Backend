class StaticController < ApplicationController

    def home
        render json: { status: "WE LITTT"}
    end
end