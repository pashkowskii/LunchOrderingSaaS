class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.new(order_params)
    @order.cart_items << current_cart.cart_items
    @order.save
    redirect_to users_dashboard_index_path
  end

  private

  def order_params
    params.require(:order).permit(:address, :total_price)
  end
end
