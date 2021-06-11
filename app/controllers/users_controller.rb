class UsersController < ApplicationController
  def top
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
  end
  
  
    private
  def user_params
    params.require(:user).permit(:name)
  end
  
  
  
  
end
