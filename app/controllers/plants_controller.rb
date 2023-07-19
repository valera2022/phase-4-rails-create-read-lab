class PlantsController < ApplicationController
    wrap_parameters format : []
    def index 
        plant = Plant.all 
        render json: plant
    
    end
    def show 
        plant = Plant.find_y(id: params[:id])

        render json: plant
    
    end

    def create 
        plant = Plant.create(production_params)

        render json: plant
    
    end
    def production_params 
        params.permit(:name,:image,:price)
    
    end
end
