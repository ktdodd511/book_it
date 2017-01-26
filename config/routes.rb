Rails.application.routes.draw do


  get '/' => 'welcome#index', as: 'welcome'

  get '/users/new' => 'users#new', as: 'new_user'

  get '/sessions/new' => 'sessions#new', as: 'new_session'

  get '/logout' => 'sessions#destroy'

  get 'users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  root to: 'welcome#index'

  resources :users do
    resources :books
  end

  resources :books do
    resources :reviews
  end

  resources :sessions

  resources :password_resets






end
