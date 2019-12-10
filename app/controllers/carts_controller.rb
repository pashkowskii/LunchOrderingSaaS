# frozen_string_literal: true

class CartsController < ApplicationController
  before_action :initialize_session
  decorates_assigned :cart_items

  def index
    @cart_items = Menu.where(id: session[:cart])
  end

  def create
    AddToCartService.call(menu_id: params['cart']['id'].to_i,
                          session_cart: session[:cart])
    redirect_to users_dashboard_index_path
  end

  def destroy
    session[:cart].delete(params['id'].to_i)
    redirect_to carts_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end
end

