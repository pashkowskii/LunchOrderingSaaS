# frozen_string_literal: true

class AdminCreator < ApplicationService
  initialize_with :user

  def call
    user.update(admin: user_first?)
  end

  private

  def user_first?
    User.second.blank?
  end
end

