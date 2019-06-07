class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
    Favorite.create(favorite_params)
    redirect_to root_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:name)
  end
end
