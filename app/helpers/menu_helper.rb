# frozen_string_literal: true

module MenuHelper
  def courses_for_select
    Menu.categories.keys.map { |category| [category.capitalize, category] }
  end
end


