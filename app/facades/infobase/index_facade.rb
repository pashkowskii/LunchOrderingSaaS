# frozen_string_literal: true

module Infobase
  class IndexFacade
    DEFAULT_DAY = 'monday'
    WEEKDAYS = %w[monday tuesday wednesday thursday friday].freeze
    COURSES = %w[first_course main_course drinks_course].freeze

    # def first_course
    # def main_course
    # def drinks_course

    COURSES.each do |name_of_course|
      define_method(name_of_course.to_s) do
        Menu.where(day: current_day_of_week)
            .public_send(name_of_course)
      end
    end

    # def orders_for_monday
    # def orders_for_tuesday
    # def orders_for_wednesday
    # ......................

    WEEKDAYS.each do |day|
      define_method("orders_for_#{day}") do
        @orders = Order.where("strftime('%w', created_at) = ?", (WEEKDAYS.index(day) + 1).to_s).decorate
      end
    end

    def users
      User.all
    end

    def new_menu
      @menu = Menu.new
    end

    private

    def current_day_of_week
      Date.today.on_weekday? ? Date.today.strftime('%A').downcase : DEFAULT_DAY
    end
  end
end


