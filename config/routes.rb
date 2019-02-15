Rails.application.routes.draw do
  root 'events#index'
  devise_for :users, controllers: { registrations: "registrations" }

  # from https://guides.rubyonrails.org/routing.html - can show user profile without id
  get 'profile', to: 'users#show'

  resources :events
  resources :users
  resources :comedians, only: [:index, :show, :new]
  resources :comedian_profiles

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show, :create]
      resources :signups, only: :create
      resources :users
      resources :comedian_profiles
    end
  end
end
