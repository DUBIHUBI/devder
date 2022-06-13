class FavouritesController < ApplicationController
  before_action :find_professional, only: [:create, :delete]

  def index
    # user.where()
  end

  def create
    @favourite = Favourite.new(favourite_params)
    @favourite.student = current_user
    @favourite.professional = @user

    if @favourite.save
      redirect_to favourites_path
    else
      render 'new', status: :unprocessable_entity
    end

    respond_to do |format|
      format.html { redirect_to favourites_path }
      format.text { render "favourites", locals: { favourite: @favourite}, formats: [:html] }
    end

  end

  private

  def favourite_params
    params.require(:favourite).permit(:professional_id)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
