# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'pavlo2706@gmail.com' }
    password { 'password' }
    admin { true }
  end
end