Rails.application.routes.draw do

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  resources :categories
  resources :movies
  resources :users
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
