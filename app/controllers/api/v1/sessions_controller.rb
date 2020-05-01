class SessionsController < ApplicationController
    before_action :require_login, :except => [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user 
            session[:user_id] = @user.id
            #render json
        else 
            render json: {message: "User not found"}
        end
    end

    def destroy
        reset_session     
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end
