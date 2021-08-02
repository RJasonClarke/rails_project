class UsersController < ApplicationController
    include UsersHelper

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new
        end
    end

    def show
        not_logged_in
        @user = User.find_by_id(params[:id])
        if !@user
        redirect_to '/'
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    
end
