class FavouritesController < ApplicationController
  before_action :find_professional, only: [:create, :delete]

  def index
    @favourites = Favourite.where(student_id: current_user.id)
    @users = []
    @favourites.each do |favourite|
      @users << User.find(favourite.professional_id)
    end
  end

  def create
    @favourite = Favourite.new
    @favourite.student = current_user
    @favourite.professional = @user

    if @favourite.save
      respond_to do |format|
        format.html { redirect_to favourites_path }
        format.text do
          puts '>>>>>>>>>>>>>>>>>>>>>'
          puts 'HELLO'
          puts '>>>>>>>>>>>>>>>>>>>>>'
          render partial: "users/card", locals: { user: @user }, formats: [:html]

        end
      end
    else
      render 'new', status: :unprocessable_entity
    end
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
