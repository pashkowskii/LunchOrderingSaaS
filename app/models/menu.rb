# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :cart_items

  enum category: %i[First Main Drinks]
  enum day: %i[Monday Tuesday Wednesday Thursday Friday]

  validates :title, presence: true
  validates :price, presence: true

  def title_with_price
    "#{title} $#{price.to_d}"
  end
end
