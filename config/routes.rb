Rails.application.routes.draw do
  resources :rp_movements
  resources :rps
  resources :cdp_movements
  resources :cdps
  resources :dependences
  resources :movement_items
  resources :items
  root "home#index"
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
