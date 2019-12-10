# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def create
    super { AdminCreatorService.call(user: resource) if resource.persisted? }
  end

  private

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

