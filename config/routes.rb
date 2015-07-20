Rails.application.routes.draw do

  root 'cards#index'
  devise_for :users
  get '/users/:id', :to => 'users#show', :as => :user

  resources :cards
  resources :users

end
