Rails.application.routes.draw do
  resources :users
  resources :pacientes
  resources :eventos
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  get '/home' => 'home#index', :as => :home
end
