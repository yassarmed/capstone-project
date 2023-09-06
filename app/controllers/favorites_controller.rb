class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render :index
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    redirect_to "/favorites", status: :see_other
  end
end
