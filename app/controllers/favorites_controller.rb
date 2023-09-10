class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    @favorites = current_user.favorites
    render :index
  end

  def show
    @favorite = Favorite.where(user_id: params[:user_id])
    render :show
  end

  def add_to_favorites
    item_id = params[:item_id] # Ensure that :item_id is correctly set in your request
    favorite = current_user.favorites.new(item_id: item_id)
  
    if favorite.save
      render json: { message: "Item added to favorites" }, status: :created
    else
      render json: { message: favorite.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  
  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    redirect_to "/favorites", status: :see_other
  end
end
