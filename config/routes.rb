Rails.application.routes.draw do
  resources :badges
  resources :visitors
  resources :sectors
  root to: 'visitors#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
