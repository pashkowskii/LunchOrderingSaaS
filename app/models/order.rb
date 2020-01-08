# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer, class_name: User.name, foreign_key: 'user_id'

  belongs_to :salads_menu, class_name: Menu.name, foreign_key: 'salad_id', optional: true
  belongs_to :burgers_menu, class_name: Menu.name, foreign_key: 'burger_id', optional: true
  belongs_to :beverages_menu, class_name: Menu.name, foreign_key: 'beverage_id', optional: true

  validates :address, :total_price, presence: true
end
