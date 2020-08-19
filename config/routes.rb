Rails.application.routes.draw do

  resources :fleets
  post '/fleets' => 'fleets#update'
  resources :ships
  resources :users
  post '/fleets' => 'fleets#update'

end
