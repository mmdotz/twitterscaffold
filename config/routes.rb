Rails.application.routes.draw do

  resources :tweets
  resources :users

root 'sessions#new'

end
