Rails.application.routes.draw do

  root 'app#index'

  get '/templates/:action', controller: 'templates'

end
