class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end
end
