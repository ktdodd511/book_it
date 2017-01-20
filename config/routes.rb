Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

  get '/logout' => 'sessions#destroy'

  get 'users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  root to: 'welcome#index'

  resources :users
  resources :sessions


end
