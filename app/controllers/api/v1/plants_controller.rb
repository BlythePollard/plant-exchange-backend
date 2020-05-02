class Api::V1::PlantsController < ApplicationController
    before_action :set_user, except: :plant_index_home

    def create
        @plant = @user.plants.build(plants_params)
        if @plant.save
            render json: @plant, include: [:user]
        else 
            render json: {error: 'Error creating plant'}
        end
    end

    def plant_index_home 
        @plants = Plant.all
        render json: @plants
    end

    def index
        @plants = @user.plants.all
        render json: @plants, include: [:user]
    end

    def show
        @plant = @user.plants.find(params[:id]) #repetetive- can make a before set_account method if I want to refactor
        render json: @plant, include: [:user]
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
