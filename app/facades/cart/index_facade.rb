# frozen_string_literal: true

module Cart
  class IndexFacade
    def initialize(session_cart:)
      @session_cart = session_cart
    end

    def order
      Order.new
    end

    def cart_items
      MenuDecorator.decorate_collection(Menu.where(id: @session_cart))
    end

    def total_price
      cart_items.sum(:price)
    end
  end
end
