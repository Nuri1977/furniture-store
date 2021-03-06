# frozen_string_literal: true

Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'products/show'
  resources :subcategories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: [:show]
  devise_for :users, controllers: { registrations: 'users/registrations'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/showrooms', to: 'showrooms#index'
  # get '/showrooms/new', to: 'showrooms#new'
  # post '/showrooms/create', to: 'showrooms#create'
  resources :showrooms, only: [:index, :new, :create]
  resources :products, only: [:show]
  root to: 'pages#home'

  namespace :dashboard do
    root to: 'pages#home'
  end
end
