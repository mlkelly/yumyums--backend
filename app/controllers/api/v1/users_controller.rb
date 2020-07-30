class Api::V1::UsersController < ApplicationController
# before_action :find_user, only: [:show, :update, :destroy] # not working for some reason... had to add intro line to all methods
skip_before_action :logged_in?, only: [:create, :destory]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        # byebug
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: {user: user, token: encode_token({user_id: user.id})}
            # render json: {user: user, token: encode_token({user_id: user.id})}, status: :created
        else 
            # user.errors.full_messages
            render json: {error: "Failed to create a user"}, status: :not_acceptable
        end
        # render json: user
    end

    def update
        # byebug
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        # byebug
        user.destroy
        render json: {message: "User deleted!!"} # not really doing anything w this on frontend
    end

    private 

    def find_user 
        user = User.find(params[:id])
    end

    def user_params
        # params.require(:user).permit(:username, :password, :bio, :img)
        params.permit(:id, :user, :username, :password, :bio, :img)
    end
end
