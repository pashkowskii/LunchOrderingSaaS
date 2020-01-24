# frozen_string_literal: true

class MenuDecorator < ApplicationDecorator

  def self.collection_decorator_class
    CartDecorator
  end

  def title_with_price
    "#{title} $#{price.to_d}"
  end
end

