# frozen_string_literal: true

module Dashboard
  class IndexFacade
    DEFAULT_DAY = 'monday'
    COURSES = %w[first_course main_course drinks_course].freeze

    def initialize(day:, session_cart:)
      @day = day
      @session_cart = session_cart
    end

    # def first_course
    # def main_course
    # def drinks_course

    COURSES.each do |name_of_course|
      define_method(name_of_course.to_s) do
        @menu = Menu.where(day: target_day)
                    .public_send(name_of_course)
                    .decorate
      end
    end

    def menu_for_today?(menus)
      menus.any? { |menu| menu.day == current_day_of_week }
    end

    def already_in_cart?(menus)
      return unless @session_cart.present?

      @session_cart.any? { |menu_id| menus.object.ids.include? menu_id }
    end

    private

    def current_day_of_week
      @current_day_of_week ||= Date.today.on_weekday? ? Date.today
                                                            .strftime('%A')
                                                            .downcase : DEFAULT_DAY
    end

    def target_day
      @day.blank? ? current_day_of_week : @day
    end
  end
end



