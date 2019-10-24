# frozen_string_literal: true

class SessionsController < Devise::SessionsController

  private

  def after_sign_in_path_for(resource)
    if resource.try(:admin?)
      '/admin/infobase'
    elsif resource.is_a?(User)
      '/users/dashboard'
    else
      super
    end
  end
end
