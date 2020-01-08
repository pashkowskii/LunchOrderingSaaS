# frozen_string_literal: true

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test 'should not save order without details' do
    order = Order.new
    assert !order.save
  end
end
