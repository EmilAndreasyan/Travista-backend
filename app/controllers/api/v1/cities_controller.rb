class Api::V1::CitiesController < ApplicationController
    before_action :set_country

    def index
        if @country  # if parent is defined
            @cities = @country.cities
        else
            @cities = City.all
        end
        render json: @cities
    end

    def show
        @city = City.find(params[:id])
        render json: @city
    end

    def create
        @city = @country.cities.build(city_params)
        if @country.update_city(@city) != ("city name can't be blank" || "please, add a description" || "the city already exists")
            @city.save
            render json: @country
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
        city = City.find(params[:id])
        country = Country.find(city.country_id)
        city.destroy
        render json: country
    end

    private
    def set_country
        @country = Country.find(params[:country_id])
    end

    def city_params
        params.require(:city).permit(:country_id, :name, :image_url, :population, :description)
    end
end
