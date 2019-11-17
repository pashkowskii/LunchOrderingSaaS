# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, as: :itemable, dependent: :destroy
  has_many :menus, through: :cart_items
  belongs_to :user

  validates :user_id, presence: true
end
