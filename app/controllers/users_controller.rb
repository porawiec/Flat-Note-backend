class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        # verify the username exists
        user = User.find(params[:id])
        render json: user, include: [:notes]
    end
    
end
