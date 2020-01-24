# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  def create
    super { TokenCreator.call(user: resource) if resource.persisted? }
  end

  def destroy
    current_user.update(api_token: nil)
    super
  end

  private

  def after_sign_in_path_for(resource)
    resource&.admin ? admin_infobase_index_path : users_dashboard_index_path
  end

  def after_sign_out_path_for(resource)
    user_session_path
  end
end

