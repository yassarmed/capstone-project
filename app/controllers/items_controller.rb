class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def show
    @movie = Item.find(params[:id])
    render json: @movie
  end

  def new
    @item = Item.new
    render :new
  end

  

end
