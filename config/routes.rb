# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations',
                                    sessions: 'sessions',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    devise_scope :user do
      root to: 'users/dashboard#index'
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

    resources :conversations do
      member do
        post :close
      end

      resources :messages, only: [:create]
    end

    namespace :api do
      namespace :v1 do
        resources :orders
      end
    end
  end
end

