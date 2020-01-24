# frozen_string_literal: true

module Users
  class DashboardController < ApplicationController
    def index
      @dashboard_facade = Dashboard::IndexFacade.new(day: params['day'],
                                                     session_cart: session[:cart])
      @user = User.first
    end
  end
end


