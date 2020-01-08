# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations',
                                    sessions: 'sessions',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    root to: 'sessions#new'
  end

  resources :menus
  resources :orders
  resources :carts

  namespace :admin do
    resources :infobase
  end

  namespace :users do
    resources :dashboard
  end

  namespace :api do
    namespace :v1 do
      resources :orders
    end
  end
end

