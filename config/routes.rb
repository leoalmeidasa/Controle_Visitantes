Rails.application.routes.draw do
  resources :badges
  resources :visitors
  resources :sectors

  root to: 'visitors#index'
end
