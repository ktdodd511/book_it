Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

  get '/logout' => 'sessions#destroy'

  root to: 'welcome#index'

  resources :users
  resources :sessions


end
