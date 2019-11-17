# frozen_string_literal: true

class CartItemsController < ApplicationController

  def create
    @item = current_cart.cart_items.new(item_params)
    @item.save
    redirect_to users_dashboard_index_path
  end

  def destroy
    @item = current_cart.cart_items.find_by(id: params[:id])
    @item.destroy
    @current_cart.save
    redirect_to carts_path
  end

  private

  def item_params
    params.require(:cart_item).permit(:menu_id)
  end

end
