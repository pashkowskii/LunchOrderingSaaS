# frozen_string_literal: true

module Users
  class DashboardController < ApplicationController
    def index
      @current_day_of_week = Date.today.on_weekday? ? Date.today.strftime('%A') : 'Monday'
      @menus = Menu.where(day: params['day'] || @current_day_of_week)
      @cart_items = current_cart.cart_items.new
    end

  end
end