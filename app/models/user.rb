# frozen_string_literal: true

class User < ApplicationRecord
  NAME_REGEX = /\w+/.freeze

  after_update_commit { AppearanceBroadcastJob.perform_later self }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github facebook]

  has_many :orders, class_name: Order.name, foreign_key: 'user_id'

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.name = auth.info.name
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end

