Rails.application.routes.draw do

  resources :fleets
  post '/fleets' => 'fleets#update'
  get '/battles' => 'fleets#battle'
  patch '/compfleets' => 'fleets#fleet_two'


  resources :ships
  patch '/fleets' => 'fleets#update'
  post '/ships/:id' => 'ships#update_two'
  resources :users
  post '/fleets' => 'fleets#update'



end
