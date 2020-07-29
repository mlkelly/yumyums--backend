class ApplicationController < ActionController::API
    # if you get CFST error uncomment next line
    # skip_before_action :verify_authenticity_token

    before_action :logged_in? # VIDHI
    # before_action :authorized # MEDIUM

    def encode_token(payload)
        JWT.encode(payload, "YumYums2020") # by default, HS256 is the algorithm (third arg)
    end

    # # -----------------MEDIUM START-----------------------------
    # def auth_header
    #     request.headers["Authorization"]
    # end

    # def decoded_token
    #     if auth_header
    #         token = auth_header.split(' ')[1]
    #         begin
    #             JWT.decode(token, "YumYums2020", true, algorithm: 'HS256')
    #         rescue JWT::DecodeError
    #             nil
    #         end   
    #     end
    # end

    # def current_user
    #     if decoded_token
    #         user_id = decoded_token[0]['user_id']
    #         user = User.find(user_id)
    #     end
    # end

    # def logged_in?
    #     !!current_user
    # end

    # def authorized
    #     render json: {message: "Please Log In"}, status: :unauthorized unless logged_in? 
    # end
    # # ----------------MEDIUM END---------------------

    # -------------------VIDHI CODE----------------
    def logged_in?
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin
            user_id = JWT.decode(token, "YumYums2020")[0]["user_id"]
            user = User.find(user_id)
        rescue 
            user = nil
        # ensure
        #     always runs with an error or without
        end
        render json: {error: "Please Log In"} unless user
    end

end
