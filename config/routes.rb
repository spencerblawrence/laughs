Rails.application.routes.draw do
  root 'events#index'
  devise_for :users

  # from https://guides.rubyonrails.org/routing.html - can show user profile without id
  get 'profile', to: 'users#show'

  resources :events
  resources :users
  resources :comedians, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show, :create]
      resources :signups, only: :create
      resources :users
    end
  end
end
