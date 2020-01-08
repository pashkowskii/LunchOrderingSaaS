# frozen_string_literal: true

class TokenCreatorService < ApplicationService
  initialize_with :user

  def call
    user.update(api_token: Devise.friendly_token[0, 20]) if user.admin
  end
end


