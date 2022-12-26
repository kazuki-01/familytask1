Rails.application.routes.draw do
  root 'home#top'

  devise_for :users
  resources :users
  get '/check' => 'users#check'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => "sessions#destroy"



 
end
