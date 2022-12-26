Rails.application.routes.draw do
  get 'sessions/new'
  root 'home#top'

  devise_for :users
  resources :users
  get '/check' => 'users#check'


 
end
