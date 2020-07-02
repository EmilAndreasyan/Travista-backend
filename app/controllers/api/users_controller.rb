class Api::V1::UsersController < ApplicationController
    
def index
    binding.pry
    @users = User.all
    render json: @users
end

def show
    @user = User.find(params[:id])
    render json: @user
end

def create
    @user = User.new(user_params)
    if user.save
        render json: @user
    else
        render json: {error: 'Error creating a user'}
    end
end

def edit

end

def update
    
end


def destroy
    @user = User.find(params[:id])
    @user.destroy
end

private

def user_params
    params.require(:user).permit(:name, :email, :age, :gender, :address)
end    
end
