Rails.application.routes.draw do

  root 'pages#home'

  get '/home', to: 'pages#home'
  get '/about-us', to: 'pages#about'
  get '/support', to: 'pages#support'

  resources :todos

end
