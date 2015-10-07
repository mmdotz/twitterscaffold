Rails.application.routes.draw do

  resources :tweets
  resources :users

  get     '/login', to: 'sessions#new',    as: 'new_login'
  post    '/login', to: 'sessions#create', as: 'create_session'
  delete  '/logout', to: 'sessions#destroy', as: 'logout'

#change this back to login page as root_path
  root 'tweets#index' #why doesn't this say login in url?

end
