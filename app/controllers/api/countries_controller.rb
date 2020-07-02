class Api::V1::CountriesController < ApplicationController

    def index
        binding.pry
        @countries = Country.all
        render json: @countries
    end
    
    def show
        @country = Country.find(params[:id])
        render json: @country
    end
    
    def create
        @country = Country.new(country_params)
        if user.save
            render json: @country
        else
            render json: {error: 'Error adding a Country'}
        end
    end
    
    def edit
    
    end
    
    def update
        
    end
    
    
    def destroy
        @country = Country.find(params[:id])
        @country.destroy
    end
    
    private
    
    def country_params
        params.require(:country).permit(:name, :flag, :capital, :language, :currency, :area)
    end  
end
