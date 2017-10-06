Rails.application.routes.draw do


  get 'posts/new'

  get 'potst/new'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  get '/posts', to: 'posts#new'
  get '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
