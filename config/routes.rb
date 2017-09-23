Rails.application.routes.draw do
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root  'sessions#new'
  resources :reservations
  resources :cars
  resources :super_admins
  resources :admins
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
