# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def create
    super { resource.update(admin: true) if resource.persisted? && User.count == 1 }
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