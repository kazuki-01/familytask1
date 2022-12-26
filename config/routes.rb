Rails.application.routes.draw do
  get 'home/top'

  devise_for :users
  resources :users
  get '/check' => 'users#check'


 
end
