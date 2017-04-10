Rails.application.routes.draw do
  get 'games/new'

  root 'home#top'
  get '/about'=>'home#about'
  get '/games/new'=>'games#new'
  post '/games'=>'games#create'
  get '/games'=>'games#index'
  get '/games/:id'=>'games#show',as:'game'
  get '/games/:id/edit'=>'games#edit',as:'edit_game'
  patch '/games/:id'=>'games#update',as:'update_game'
  delete '/games/:id'=>'notes#destroy',as:'destroy_game'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
