Rails.application.routes.draw do

  root 'app#index'

  get '/templates/:action', controller: 'templates'

  get '/cards', to: 'app#index'
  get '/cards/*path', to: 'app#index'

  namespace :api, defaults: {format: :json} do
    resources :cards, only: [:index, :create, :update, :destroy, :show]
  end

end
