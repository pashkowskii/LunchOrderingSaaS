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
    return if @order.save

    session[:cart] = nil
    redirect_to users_dashboard_index_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to admin_infobase_index_path
  end

  private

  def order_params
    params.require(:order).permit(:address, :total_price, :menu_titles)
  end
end

