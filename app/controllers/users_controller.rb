class UsersController < ApplicationController

    def index
      @users = User.all
    end
  
    def new
      @user = User.new
    end
  
    private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :city, :email, :password, :password_confirmation, :remember_me)
    end
  
  
  end