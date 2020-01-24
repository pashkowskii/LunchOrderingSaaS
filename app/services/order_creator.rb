# frozen_string_literal: true

class OrderCreator < ApplicationService
  initialize_with :current_user, :order_params, :session_cart

  COURSES = %w[salad burger beverage].freeze

  def call
    unless build_order_object.save
      return service_result(errors: order.errors.full_messages)
    end

    service_result(success: true)
  end

  private

  attr_reader :order

  def build_order_object
    initialize_order
    assign_categories
    assign_total_price
    order
  end

  def initialize_order
    @order = current_user.orders.new(order_params)
  end

  def order_items
    @order_items ||= Menu.where(id: session_cart)
  end

  def assign_categories
    COURSES.each do |course|
      order.assign_attributes("#{course}_id": order_items.send(course.to_s).ids.first)
    end
  end

  def assign_total_price
    order.assign_attributes(total_price: order_items.sum(:price))
  end

  def service_result(success: false, errors: [])
    OpenStruct.new(success?: success, errors: errors)
  end
end
