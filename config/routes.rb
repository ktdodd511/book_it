Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

  get 'people/new'

  root to: 'welcome#index'

  resources :users
  resources :sessions


end
