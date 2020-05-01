class Api::V1::UsersController < ApplicationController
    
    def create
        user= User.find_or_create_by(username: params[:username])
        if user.carts.length == 0
            cart = Cart.create(user_id: user.id)
            user.carts << cart
        end
        render json: user, include: [:carts]
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include: [:carts]
        else 
            render json: {message: "User not found"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end
