class UsersController < ApplicationController
      def new
        @user = User.new
      end

      def create  
       # auth = request.env["omniauth.auth"]
        @user=User.new(user_params)
        #@user.email = params[:user][:email]
        # @user.name = params[:user][:name]
        # @user.email= params[:user][:email]
        # @user.password_digest= params[:user][:password_digest]
            if @user.save 
        redirect_to user_path(@user) #get request to index "/"
        else 
          render :new #show them the signup form 
      end 
    end 

     private 

    def user_params 
         params.require(:user).permit([:user][:email]
        #[:user] [:email], [:user][:password_digest])
    end 
  
end


# params[:user][:email].present? && !User.exists (:email =>params [:user][email])