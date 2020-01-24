# frozen_string_literal: true

module Api
  module V1
    class OrdersController < BaseController
      DEFAULT_DAY = '1' # Monday

      def index
        if user_has_access?
          orders_for_current_day = Order.where("strftime('%w', created_at) = ?", current_day_of_week)
          render json: OrderSerializer.new(orders_for_current_day)
        else
          render template: 'errors/403'
        end
      end

      private

      def current_day_of_week
        Date.today.on_weekday? ? Date.today.strftime('%w') : DEFAULT_DAY
      end
    end
  end
end

