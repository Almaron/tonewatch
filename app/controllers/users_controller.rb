class UsersController < ApplicationController

  before_action :admin_access
  before_action :get_user, only: [:edit, :update, :destroy]

  def index
    @users = User.order(:full_name).all
    @user = User.new
  end

  def create
    User.create user_params
    redirect_to users_path
  end

  def edit

  end

  def update
    @user.update user_params
    redirect_to users_path
  end

  def destroy
    @user.destroy
  end

  private

  def get_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:polis, :email, :password, :password_confirmation, :full_name, :admin)
  end
end
