class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  
  def current_user
    # Return the current user or find the user from the database based on the user_id
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !!current_user   # Returns true if we have a current user false otherwise (!! converts anything into a boolean)
  end
  
  def require_user
    if (!logged_in?)
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end
  
  
end
