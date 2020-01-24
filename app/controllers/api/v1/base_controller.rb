# frozen_string_literal: true

module Api
  module V1
    class BaseController < ActionController::API
      def user_has_access?
        User.first.api_token == request.headers['Api-Token']
      end
    end
  end
end
