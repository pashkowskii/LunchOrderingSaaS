# frozen_string_literal: true

module CartsHelper
  def menus
    @menus ||= cart_items.joins(:menu).all
  end
end
