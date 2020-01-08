# frozen_string_literal: true

class OrdersController < ApplicationController
  def create
    order_service_result = OrderCreatorService.call(current_user: current_user,
                                                    order_params: order_params,
                                                    session_cart: session[:cart])
    return unless order_service_result.success?

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
    params.require(:order).permit(:address)
  end
end

