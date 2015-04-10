class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new

  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menu_items = MenuItem.where(restaurant_id: @restaurant.id)
    if user_signed_in?
     @order_item = current_order.order_items.new
    end
  end
end
