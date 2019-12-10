# frozen_string_literal: true

class CartDecorator < Draper::CollectionDecorator
  delegate :sum

  def total_price
    sum(:price)
  end

  def menu_titles
    pluck(:title).join(', ')
  end
end
