# frozen_string_literal: true

class CartItem < ApplicationRecord
  belongs_to :menu
  belongs_to :itemable, polymorphic: true
end
