class Api::V1::PlantsController < ApplicationController

    def create
        @plant = @user.plants.build(plants_params)
        if @plant.save
            render json: @plant
        else 
            render json: {error: 'Error creating plant'}
        end
    end

    def index
        @plants = @user.plants.all
        render json: @plants
        #will want to use serializer if we don't want to send all data to front end (or use 'except')
    end

    def show
        @plant = @user.plants.find(params[:id]) #repetetive- can make a before set_account method if I want to refactor
        render json: @plant
    end

    def destroy 
       @plant = Plant.find(params[:id])
       @plant.destroy
    end

    private 

    def plants_params
        params.require(:plant).permit(:name, :description, :available, :user_id)
    end

    def set_user
        @user = User.find(params[:user_id])
    end

end
