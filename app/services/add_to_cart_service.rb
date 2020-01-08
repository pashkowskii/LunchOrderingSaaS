# frozen_string_literal: true

class AddToCartService < ApplicationService
  initialize_with :menu_id, :session_cart

  def call
    session_cart << menu_id unless session_cart.include?(menu_id)
  end
end

