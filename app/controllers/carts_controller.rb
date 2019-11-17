# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @cart_items = current_cart.cart_items
  end

  def destroy
    current_cart.destroy
    render :show
  end
end
