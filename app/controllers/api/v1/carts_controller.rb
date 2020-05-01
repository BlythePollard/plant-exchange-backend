class Api::V1::CartsController < ApplicationController
    before_action :set_user
    #every time we access cart, it needs to be connected to user

    def show
        cart = @user.carts.find_by(id: params[:id])
        if cart
            render json: cart
        else 
            render json: {message: "Cart not found"}
        end
    end

    def checkout
        cart = Cart.find_by(id: params[:id])
        #find all plants that belong to cart, change available to false
        cart.checkout = true
        cart.save

        #create a new cart (blank slate), import this json
    end

    def set_user
        @user = User.find(params[:user_id])
    end

end
