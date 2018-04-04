Rails.application.routes.draw do

  root 'pages#home'
  get '/about-us', to: 'pages#about'
  get '/support', to: 'pages#support'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
