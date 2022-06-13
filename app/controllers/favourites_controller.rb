class FavouritesController < ApplicationController

  def index
    user.where()
  end


  def create
   @user = User.find(params[:user_id])
   @favourite = Favourite.create()

  end
end
