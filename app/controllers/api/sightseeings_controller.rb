class Api::V1::SightseeingsController < ApplicationController
    before_action :set_city

    def index
        @sightseeings = @city.sightseeings
        render json: @sightseeing
    end

    def show
        @sightseeing = Sightseeing.find(params[:id])
        render json: @sightseeing
    end

    def create
        # @sightseeing = @city.sightseeing.build(sightseeing_params)
        # if @sightseeing.update_sightseeing(@sightseeing) != ("sorry, this item is out of stock" || "sorry, we don't have this item for your gender")
        #     @sightseeing.save
        #     render json: @sightseeing
        # else
        #     render json: {error: 'Error creating a sightseeing'}
        # end

        @sightseeing = @city.sightseeing.build(sightseeing_params)
        if @sightseeing.save
            render json: @sightseeing
        else
            render json: {error: 'Error creating a sightseeing'}
        end
    end

    def edit

    end

    def update
        
    end
    

    def destroy
        @sightseeing = Sightseeing.find(params[:id])
        @sightseeing.destroy
    end

    private
    
    def set_city
        @city = City.find_by(params[:city_id])
    end

    def sightseeing_params
        params.require(:sightseeing).permit(:city_id, :name, :category, :image, :description)
    end

end
