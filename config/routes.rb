Rails.application.routes.draw do

  root 'app#index'

  get '/templates/:action', controller: 'templates'

  namespace :api, defaults: {format: :json} do
    resources :cards, only: [:index, :create, :update, :destroy]
  end

end
