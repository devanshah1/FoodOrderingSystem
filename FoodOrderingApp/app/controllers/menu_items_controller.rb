class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
  end

  def new

  end

  def create
    @menu_item = MenuItem.new(params[:menu_item].except("restaurant_id"))
    @menu_item.restaurant = Restaurant.find(params[:menu_item]['restaurant_id'])
    
    @menu_item.save
    redirect_to @menu_item
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  #private
  #def menuItem_params
  #  params.require(:menu_item).permit(:restaurant, :name, :price, :description)
  #end
end
