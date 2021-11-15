class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current.user
    @user.update(user_params)
    redirect_to user_path(params[:id])
  end

  def index
    @users = User.all
  end

  def unsubscribe
  end

  def withdraw
  end

private
  def user_params
    params.requier(:user).permit(:last_name, :first_name, :email, :nickname, :image_id, :introduction)
  end

end
