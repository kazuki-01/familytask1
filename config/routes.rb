Rails.application.routes.draw do
  devise_for :users



  resources :users
  get '/check' => 'users#check'


 
end
