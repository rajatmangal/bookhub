class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if (user && (params[:session][:password] == user.password))
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now[:danger] = "Something went wrong with your credentials!"
      render 'new'
    end
  end
  
  def destroy
    session[:userid] = nil
    flash[:success] = "You have successfully logged out of your account"
    redirect_to root_path
  end
  
end