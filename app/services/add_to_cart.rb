# frozen_string_literal: true

class AddToCart < ApplicationService
  initialize_with :params, :session_cart

  def call
    menu_id = params.dig(:cart, :id).to_i
    menu_id.nil? ? false : session_cart << menu_id unless session_cart
                                                            .include?(menu_id)
  end
end

