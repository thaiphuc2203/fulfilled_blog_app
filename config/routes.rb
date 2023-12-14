# frozen_string_literal: true

Rails.application.routes.draw do
  resources :post_categories
  resources :categories
  resources :post_comments
  resources :post_tags
  resources :tags
  resources :posts
  resources :roles

  namespace :admin do
    #only admin users will be able to reach this resource
    resources :users, only: [:index]
    devise_for :users , controllers: { registrations: 'users/registrations' }
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'posts#index'
end
