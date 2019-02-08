Rails.application.routes.draw do
  root 'events#index'
  devise_for :users

  resources :events
  resources :users

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show, :create]
      resources :signups, only: :create
      resources :users
    end
  end
end
