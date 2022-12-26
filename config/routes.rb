Rails.application.routes.draw do
  devise_for :users

  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'users/check'

 
end
