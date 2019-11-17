# frozen_string_literal: true

class OrderTotalPriceService < ApplicationService
  initialize_with :cart

  def call
    order.update(total_price: calc_total_price)
  end

  private

  def calc_total_price
    cart.cart_items.includes(:menu).sum(:price)
  end
end
