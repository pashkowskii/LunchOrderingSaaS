# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :ordered_salads, class_name: Order.name, foreign_key: 'salad_id'
  has_many :ordered_burgers, class_name: Order.name, foreign_key: 'burger_id'
  has_many :ordered_beverages, class_name: Order.name, foreign_key: 'beverage_id'

  enum category: {
    salad: SALAD = 'salad',
    burger: BURGER = 'burger',
    beverage: BEVERAGE = 'beverage'
  }

  enum day: {
    monday: MONDAY = 'monday',
    tuesday: TUESDAY = 'tuesday',
    wednesday: WEDNESDAY = 'wednesday',
    thursday: THURSDAY = 'thursday',
    friday: FRIDAY = 'friday'
  }


  # validates :title, presence: true, format: { with: /\A[a-zA-Z]+\z/ },
  #                  length: { minimum: 2, maximum: 20 }
  # validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ },
  #                  numericality: { greater_than: 0, less_than: 1_000_000 }
  # validates :category, inclusion: { in: %w[salad burger beverage] },
  #                     presence: true
  # validates :day, inclusion: { in: %w[monday tuesday wednesday thursday friday] },
  #                presence: true
end

