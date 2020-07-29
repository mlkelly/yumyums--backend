class Api::V1::AuthController < ApplicationController
# ----------------VIDHI CODE-----------------
    skip_before_action :logged_in?, only: [:create]
    
    # Login
    def create
        # byebug
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {user: user, token: encode_token({user_id: user.id}) }
        else
            render json: {error: "invalid username or password"}
        end
    end

# # ------------MEDIUM CODE-----------------
#  skip_before_action :authorized, only: [:create]

#  def create
#     user = User.find_by(username: user_login_params[:username])
#     # authenticate method comes from bcrypt
#     if user && user.authenticate(user_login_params[:password])
#         token = encode_token({ user_id: user.id })
#         render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
#     else
#         render json: { message: 'Invalid username or password' }, status: :unauthorized
#     end
#   end

#  private

#  def user_login_params
#     params.require(:user).permit(:username, :password)
#  end


end