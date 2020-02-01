Rails.application.routes.draw do
  resources :parks
  get '/random' => 'parks#random'
  get '/search' => 'parks#search'
  get '/sort' => 'parks#sort'
  post 'authenticate', to: 'authentication#authenticate'
end
