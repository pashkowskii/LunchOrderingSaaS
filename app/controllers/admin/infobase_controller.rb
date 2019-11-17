# frozen_string_literal: true

module Admin
  class InfobaseController < ApplicationController
    def index
      @users = User.all
      @menus = Menu.all
      @menu = Menu.new(params.permit(:data))
      if @menu.save
        redirect_to admin_infobase_index_path
      else
        redirect_to admin_infobase_index_path
      end
      @cart_items = CartItem.all
      @carts = Cart.all
      @orders = Order.all
    end

  end
end
