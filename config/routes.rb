Rails.application.routes.draw do
  root 'home#top'

  resources :users
  get '/check' => 'users#check'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => "sessions#destroy"



 
end
