class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def my_profile
    redirect_to root_path unless current_user
  end
end
