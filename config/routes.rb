Rails.application.routes.draw do

  root "users#index"

  resources :locations, only: [:index, :show] do
    resources :comments
  end

  get '/nearby', to: 'locations#generate_shelters', as: :nearby_shelters

  resources :users, except: [:destroy] do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  resources :sessions, only: [:create]

  get    '/login',  to: 'sessions#new'

  delete '/logout', to: 'sessions#destroy'

end
