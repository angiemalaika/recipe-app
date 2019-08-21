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
          redirect_to action: "new"
      end 
  end

  def show 
    @user = find_by_id(user_params)
  end 
end 




  def user_params 
        
         params.require(:recipe).permit(:name,:password,:email)
    end 
# params[:user][:email].present? && !User.exists (:email =>params [:user][email])