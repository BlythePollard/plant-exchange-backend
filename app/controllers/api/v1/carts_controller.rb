class Api::V1::CartsController < ApplicationController

    def show
        cart = Cart.find_by(id: params[:id])
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

end
