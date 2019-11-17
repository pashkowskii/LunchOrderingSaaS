# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_cart

  def current_cart
    @current_cart ||= Cart.find_or_create_by(user: current_user)
  end
end
