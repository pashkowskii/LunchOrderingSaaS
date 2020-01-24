# frozen_string_literal: true

class OrdersAmountDecorator < Draper::CollectionDecorator
  delegate :sum

  def amount_of_orders_per_day
    sum(:total_price)
  end
end


