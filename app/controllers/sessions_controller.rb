class SessionsController < ApplicationController
  #skip_before_action :authentication_required, :only => [:new, :create]

#   def new 
#   end 

#   def create
#       if auth = request.env["omniauth.auth"]     #logged in via oauth 
#         user =User.find_or_create_by_omniauth(auth)
#         session[:user_id] = user.id 
#              redirect_to root_path
#   else
#     user = User.find_by(:email =>params[:email])  #normal login with username and password
#       if user && user.authenticate(params[:password])
#         session[:user_id] = user.id 
#           redirect_to root_path
#         else 
#          render 'sessions/new'
#      end 
#     end 
#   end 



#   def destroy
#     reset_session
#     redirect_to login_path
#   end 
# end


 # if params[:email].present? && params[:password].present?
    # raise "stop".inspect


    # oauth_email = request.env["omniauth.auth"]["info"] ["email"]

    #  if  user = User.find_by(:email => oauth_email)
    #         session[:user_id] = @user.id 
    #         redirect_to root_path
    #      else
    #       user = User.new(:email => oauth_email, :password => SecureRandom.hex )
    #   if user.save
    #     session[:user_id] = user.id 
    #     redirect_to root_path
    #   else 
    #     raise user.errors.inspect
    #  end 
    # end 