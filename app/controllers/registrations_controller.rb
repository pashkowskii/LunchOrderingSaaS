# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def create
    super { AdminCreatorService.call(user: resource) && TokenCreatorService.call(user: resource) if resource.persisted? }
  end

  private

  def after_sign_up_path_for(resource)
    resource&.admin ? admin_infobase_index_path : users_dashboard_index_path
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,
                                 :current_password)
  end
end

