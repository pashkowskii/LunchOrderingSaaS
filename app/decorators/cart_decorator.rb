# frozen_string_literal: true

class CartDecorator < Draper::CollectionDecorator
  delegate :sum
end
