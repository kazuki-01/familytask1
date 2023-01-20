Rails.application.routes.draw do
  root 'home#top'

  resources :users
  get '/check' => 'users#check'
  post '/users' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => "sessions#destroy"



 
end
