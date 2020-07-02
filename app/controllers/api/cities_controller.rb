class Api::V1::CitiesController < ApplicationController
    before_action :set_country

    def index
        @cities = @country.cities
        render json: @cities
    end

    def show
        @city = City.find(params[:id])
        render json: @city
    end

    def create
        @city = @country.city.build(city_params)
        if @city.update_city(@city) != ("city name can't be blank" || "please, add a description")
            @city.save
            render json: @city
        else
            render json: {error: 'Error adding city'}
        end
   
        # @city = @country.city.build(city_params)
        # if @city.save
        #     render json: @city
        # else
        #     render json: {error: 'Error creating a city'}
        # end
    end

    def edit

    end

    def update
        
    end
    

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

    private
    def set_country
        @country = Country.find_by(params[:country_id])
    end

    def city_params
        params.require(:city).permit(:country_id, :name, :image, :population, :description)
    end
end
