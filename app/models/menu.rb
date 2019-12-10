# frozen_string_literal: true

class Menu < ApplicationRecord
  enum category: {
    first_course: FIRST_COURSE = 'first_course',
    main_course: MAIN_COURSE = 'main_course',
    drinks_course: DRINKS_COURSE = 'drinks_course'
  }

  enum day: {
    monday: MONDAY = 'monday',
    tuesday: TUESDAY = 'tuesday',
    wednesday: WEDNESDAY = 'wednesday',
    thursday: THURSDAY = 'thursday',
    friday: FRIDAY = 'friday'
  }

  validates :title, presence: true
  validates :price, presence: true
end

