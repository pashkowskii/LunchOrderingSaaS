# frozen_string_literal: true

class OrderDecorator < ApplicationDecorator
  delegate :name, :email, to: :user, prefix: true

  def self.collection_decorator_class
    OrdersAmountDecorator
  end

  def creation_date
    created_at.strftime('%Y-%m-%d %H:%M:%S').to_s
  end
end


