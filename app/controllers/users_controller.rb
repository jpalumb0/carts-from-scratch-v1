class UsersController < ApplicationController
    
    def index
        @users = User.all

        render("users/index.html.erb")
    end

    def show
        @user = User.find(params[:id])
    
        render("users/show.html.erb")
        
    end
    
    def current_user_home
        redirect_to ("/users/#{current_user.id}")
    end
    
end