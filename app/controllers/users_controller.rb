class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(users_params())
    if (@user.is_admin === nil)
      @user.is_admin = "false"
    end
    
    if (@user.save)
      session[:user_id] = @user.id
      redirect_to profile_path
    else
      render 'new'
    end
  end

  def adminadd
     @user = User.new
  end
  
  def admincreate
    @user = User.new(users_params())
    if (@user.is_admin === nil)
      @user.is_admin = "false"
    end
    
    if (@user.save)
      redirect_to users_path
    else
      render 'adminadd'
    end
  end
  
  def index
    @user = User.all
    if (!logged_in? || current_user.is_admin === "false")
      flash[:danger] = "You are not allowed to access this page"
      redirect_to root_path
    end
  end

  
  def show
    @user = User.find(params[:id])
    if (!logged_in? || @user != current_user)
      flash[:danger] = "You are not authorized to access this page"
      redirect_to root_path
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  
  def edit
    @user = User.find(params[:id])
    if (!logged_in? || @user != current_user)
      flash[:danger] = "You are not authorized to access this page"
      redirect_to root_path
    end
  end
  
  def update
      @user = User.find(params[:id])
      if (@user.update(users_params()))
        flash[:success] = "User information was successfully updated"
        redirect_to user_path(@user)
      else
        render 'edit'
      end
  end
  
  def buyNow
  end
  
  
  
  private
    def users_params()
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :phone_number, :is_admin , :image)
    end
end