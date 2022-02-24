Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # get 'cars/map', to: 'cars#map'
  resources :cars do
    resources :bookings, only: [ :create]
    collection do
      get :map
    end
  end
  resources :bookings, only: [ :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
