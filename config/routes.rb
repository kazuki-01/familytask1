Rails.application.routes.draw do
  root 'home#top'

  devise_for :users
  resources :users
  get '/check' => 'users#check'


 
end
