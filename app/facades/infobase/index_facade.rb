# frozen_string_literal: true

module Infobase
  class IndexFacade
    DEFAULT_DAY = 'monday'
    WEEKDAYS = %w[monday tuesday wednesday thursday friday].freeze

    def menu_for(category)
      Menu.where(day: current_day_of_week)
          .public_send(category)
    end

    def orders_for(day)
      @orders = Order.where("strftime('%w', created_at) = ?", (WEEKDAYS.index(day) + 1).to_s)
                     .decorate
    end

    def users
      @users ||= User.where(admin: false)
    end

    def new_menu
      @menu = Menu.new
    end

    def current_day_of_week
      Date.today.on_weekday? ? Date.today.strftime('%A').downcase : DEFAULT_DAY
    end
  end
end


