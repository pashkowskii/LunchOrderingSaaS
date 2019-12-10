# frozen_string_literal: true

class AdminCreatorService < ApplicationService
  initialize_with :user

  def call
    user.update(admin: user_first?)
  end

  private

  def user_first?
    User.limit(2).count == 1
  end
end

