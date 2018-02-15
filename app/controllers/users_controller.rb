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
      redirect_to user_path(@user)
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
  end

  
  def show
    @user = User.find(params[:id])
  end
  
  
  
  private
    def users_params()
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :is_admin)
    end
end