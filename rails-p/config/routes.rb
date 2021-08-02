Rails.application.routes.draw do

  #home route
  root 'sessions#home'

  #signup route
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  #login route
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  #logout route
  get '/logout', to: 'sessions#destroy'

  resources :movies
  resources :users do
    resources :lists, only: [:new, :create, :index]
  end
  resources :lists do
    resources :movies, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
