class Api::V1::UsersController < ApplicationController
before_action :find_user, only: [:show, :destroy]

    def index
        users = User.all
        render json: users
    end

    def show
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def destroy
        user.destory
        redner json: "User deleted!!"
    end

    private 

    def find_user 
        user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :bio, :img)
    end
end
