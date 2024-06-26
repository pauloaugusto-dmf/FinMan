# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'main#index'

  resources :main, only: [:index]
  get 'users/edit'
  put 'users/update'
end
