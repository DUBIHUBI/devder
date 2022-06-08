class UsersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"
      @users = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def my_profile
    redirect_to root_path unless current_user
  end
end
