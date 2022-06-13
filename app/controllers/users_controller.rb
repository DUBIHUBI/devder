class UsersController < ApplicationController

  def index
    sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"

    @users = User.all
    @users = User.where(sql_query, query: "%#{params[:query]}%") if params[:query].present? && params[:query] != ""

    @users = @users.select { |user| user.company_type == params[:company_type] } if params[:company_type].present? && params[:company_type] != ""

    @users = @users.select { |user| user.funding_stage == params[:funding_stage] } if params[:funding_stage].present? && params[:funding_stage] != ""

    @users = @users.select { |user| user.gender == params[:gender] } if params[:gender].present? && params[:gender] != ""

    # @markers = @users.geocoded.map do |user|
    #   {
    #     lat: user.latitude,
    #     lng: user.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: {user: user})
    #   }
    # end

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
    @review = Review.new
  end
end
