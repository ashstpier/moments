Rails.application.routes.draw do

  authenticated :user do
    root :to => 'cards#index', as: :authenticated_root
  end

  root :to => 'home#index'

  devise_for :users
  get '/users/:id', :to => 'users#show', :as => :user

  resources :cards
  resources :users

end
