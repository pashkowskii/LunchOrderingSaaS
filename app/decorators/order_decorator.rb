# frozen_string_literal: true

class OrderDecorator < ApplicationDecorator
  delegate :name, :email, to: :customer, prefix: true, allow_nil: true

  delegate :title, to: :salads_menu, prefix: true, allow_nil: true
  delegate :title, to: :burgers_menu, prefix: true, allow_nil: true
  delegate :title, to: :beverages_menu, prefix: true, allow_nil: true

  def self.collection_decorator_class
    OrdersAmountDecorator
  end

  def creation_date
    created_at.strftime('%Y-%m-%d %H:%M:%S').to_s
  end
end


