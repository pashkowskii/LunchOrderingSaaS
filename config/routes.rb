# frozen_string_literal: true

Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'

  devise_for :users, controllers: { registrations: 'registrations',
                                              sessions: 'sessions' }

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
end

