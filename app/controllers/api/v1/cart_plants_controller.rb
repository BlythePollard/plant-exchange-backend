class Api::V1::CartPlantsController < ApplicationController #namespacing all controllers

    def index
        cart_plants = Cart_plant.all
        render json: cart_plants
    end

    def create
        cart_plant = Cart_plant.create(cart_id: params[:cart_id], plant_id: params[:plant_id])
    end

    private 

    def plants_params
        params.require(:cart_plant).permit(:cart_id, :plant_id)
    end

end
