class Api::V1::CountriesController < ApplicationController

    def index
        #byebug
        @countries = Country.all
        render json: @countries
    end
    
    def show
        @country = Country.find(params[:id])
        render json: @country
    end
    
    def create
        #byebug
        @country = Country.new(country_params)
        if @country.save
            render json: @country
        else
            render json: {error: 'Error adding a country'}
        end
    end
    
    def edit
        @country = Country.find(params[:id]) 
    end
    
    def update
        country = Country.find(params[:id]) 
        country.update(country_params)
        if country.save
        render json: country
        else
        render json: {error: 'Error updating country'}
        end
    end
    
    
    def destroy
        @country = Country.find(params[:id])
        @country.destroy
    end
    
    private
    
    def country_params
        params.require(:country).permit(:name, :flag_url, :capital, :language, :currency, :area)
    end  
end
