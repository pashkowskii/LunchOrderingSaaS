# frozen_string_literal: true
class ApplicationController < ActionController::Base
  include Pundit

  before_action :authenticate_user!
  before_action :set_locale

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def user_not_authorized
    render template: 'errors/403'
  end
end

