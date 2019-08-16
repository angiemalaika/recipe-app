class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  def authentication_required
    if !logged_in?
      redirect_to login_path 
    end 
  end 

  def logged_in?
    !!current_user
  end 
  helper_method :logged_in?
 
  def current_user
    # User.find(session[:user_id])
     @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end
  helper_method :current_user
end