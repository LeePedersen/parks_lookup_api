Rails.application.routes.draw do
  resources :parks
  get '/random' => 'parks#random'
  get '/search' => 'parks#search'
end
