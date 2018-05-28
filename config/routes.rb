Rails.application.routes.draw do

  root 'pages#home'

  get '/home', to: 'pages#home'
  get '/about-us', to: 'pages#about'
  get '/support', to: 'pages#support'
  get '/locations', to: 'pages#locations'
  get '/privacy', to: 'pages#privacy'
  get '/terms', to: 'pages#terms'

  get '/signup', to: 'chefs#new'
  resources :users, except: [:new]

  resources :todos

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
