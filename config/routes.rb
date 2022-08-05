# frozen_string_literal: true

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'sessions#home'

  resources :users, only: %i[new create edit update show destroy]

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
