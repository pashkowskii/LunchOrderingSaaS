# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :cart_items, as: :itemable, dependent: :destroy
  belongs_to :user
end
