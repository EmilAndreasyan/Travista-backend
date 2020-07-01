class Api::V1::ItemsController < ApplicationController
    before_action :set_user

    def index
        items = @user.items
        render json: items
    end

    def show
        item = Item.find(params[:id])
        render json: item
    end

    def create
        item = @user.item.build(item_params)
        if item.save
            render json: item
        else
            render json: {error: 'Error creating an item'}
        end
    end

    def edit

    end

    def update
        
    end
    

    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private
    def set_user
        @user = User.find_by(params[:user_id])
    end

    def item_params
        params.require(:item).permit(:user_id, :name, :size, :price, :in_stock, :color, :image)
    end
    
end

