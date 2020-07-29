class Api::V1::UsersController < ApplicationController
before_action :find_user, only: [:show, :destroy]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    # # does same thing as show method above
    # def profile
    #     render json: {user: current_user}, status: :accepted
    # end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: {username: user.username, token: encode_token({user_id: user.id})}, status: :created
        else 
            render json: {error: "Failed to create a user"}, status: :not_acceptable
        end
        # render json: user
    end

    def destroy
        user.destory
        render json: "User deleted!!"
    end

    private 

    def find_user 
        user = User.find(params[:id])
    end

    def user_params
        # params.require(:user).permit(:username, :password, :bio, :img)
        params.permit(:username, :password, :bio, :img)
    end
end
