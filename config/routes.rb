Rails.application.routes.draw do
  resources :visitors
  resources :badges
  resources :visitors
  root to: 'visitors#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
