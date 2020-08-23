Rails.application.routes.draw do

  resources :fleets
  post '/fleets' => 'fleets#update'
  resources :ships
  patch '/fleets' => 'fleets#update'
  resources :users
  post '/fleets' => 'fleets#update'

end
