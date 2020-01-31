Rails.application.routes.draw do
  resources :parks
  get '/random' => 'parks#random'
end
