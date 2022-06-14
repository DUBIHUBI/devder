class FavouritesController < ApplicationController
  before_action :find_professional, only: [:create, :delete]

  def index
    if current_user
      @favourites = Favourite.where(student_id: current_user.id)
      @users = []
      @favourites.each do |favourite|
        @users << User.find(favourite.professional_id)
      end
    else
      redirect_to root_path
    end
  end

  def create
    @favourite = Favourite.new
    @favourite.student = current_user
    @favourite.professional = @user
    @favourite.save
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to favourites_path, status: :see_other
  end

  private

  def favourite_params
    params.require(:favourite).permit(:professional_id)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
