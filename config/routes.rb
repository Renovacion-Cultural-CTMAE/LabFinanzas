Rails.application.routes.draw do
  root "rubros#index"
  resources :movimiento_rps
  resources :rps
  resources :movimiento_cdps
  resources :cdps
  resources :dependencia
  resources :movimiento_rubros
  resources :rubros
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
