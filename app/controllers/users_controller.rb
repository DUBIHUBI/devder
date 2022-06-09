class UsersController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"
      @users = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @users = User.all
    end



    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: {user: user})
      }
    end

  end

  def show
    @user = User.find(params[:id])
    # @users = User.all
    # @markers = @users.geocoded.map do |user|
    #   {
    #     lat: user.latitude,
    #     lng: user.longitude
    #   }
    # end

    # user = @user.geocoded
    @markers = [{lat: @user.latitude, lng: @user.longitude}]

  end

  def my_profile
    redirect_to root_path unless current_user
  end
end
