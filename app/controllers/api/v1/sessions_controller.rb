class Api::V1::SessionsController < ApplicationController
    before_action :require_login, :except => [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:session][:user])
        if @user 
            session[:user_id] = @user.id
            render json: @user, include: [:plants]
        else 
            render json: {message: "User not found backend"}
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
