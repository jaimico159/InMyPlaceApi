# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/sessions/validate', to: 'sessions#validate'

  resources :establishments, except: :new
  resources :users, only: :index
end
