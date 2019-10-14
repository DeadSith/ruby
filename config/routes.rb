Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'customers#index'
  resources :numbers
  resources :customers
  resources :cities
  resources :calls
  resources :plans
end
