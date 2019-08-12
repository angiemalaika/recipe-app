class UsersController < ApplicationController
      def new
        @user = User.new
      end

      def create  
        @user=User.new
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
        
        if @user.save
          session[:user_id] = @user.id 
           redirect_to root_path
        else 
          render 'users/new'
      end 
  end




  # def user_params 
    #      params.require(:user).permit([:user])
    #     #[:user] [:email], [:user][:password_digest])
    # end 
# params[:user][:email].present? && !User.exists (:email =>params [:user][email])