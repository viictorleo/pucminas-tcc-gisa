Rails.application.routes.draw do
  resources :authorization_requests
  resources :health_wallets
  devise_for :user, controllers: {
    sessions: 'user/sessions'
  }
  resources :user
  root 'home#index'
  get '/login', to: 'login#index'
  get '/home', to: 'home#index'
  get '/settings', to: 'settings#index'
  get '/associate_services', to: 'associate_services#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
