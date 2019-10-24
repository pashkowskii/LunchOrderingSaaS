# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions'}

  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  namespace :admin do
    resources :infobase, only: [:index]
  end

  namespace :users do
    resources :dashboard, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
