class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(params[:order_item])
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order#Order.find_by_user_id(current_user.id)
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(params[:order_item])
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    render 'carts/show'
  end

  def index
    if restaurant_owner_signed_in?
      @order_items = OrderItem.find_all_by_menu_item_id(MenuItem.find_all_by_restaurant_id(Restaurant.find_all_by_restaurant_owner_id(current_restaurant_owner.id)))
    else
      @order_items = OrderItem.all
    end


  end


  #private
  #def order_item_params
   # params.require(:order_item).permit(:quantity, :menu_item_id)
  #end
end
