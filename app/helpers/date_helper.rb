# frozen_string_literal: true

module DateHelper
  DEFAULT_DAY = 'monday'

  def current_day_of_week
    Date.today.on_weekday? ? Date.today.strftime('%A').downcase : DEFAULT_DAY
  end
end

