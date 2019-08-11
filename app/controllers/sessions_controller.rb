class SessionsController < ApplicationController
  def new 
  end 

  def create
  
    user = User.find_by(:email =>params[:email])
    session[:user_id] = user.id 
    
 

  end
# #add a #login #signup 
# #add action to view sessions#create 

 
#     auth = request.env["omniauth.auth"]
#     user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
#     if session[:user_id] == user.id
#     redirect_to root_url, :notice => "Signed in!"
#     else 
#       render 'users/new'
#     end 
#   def destroy
#     session[:user_id] = nil
#     redirect_to root_url, :notice => "Signed out!"
#   end
end
