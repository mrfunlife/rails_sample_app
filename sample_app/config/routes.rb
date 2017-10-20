Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

  get '/home',    to: 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/users/new',  to: 'users#new'
  get '/login',  to: 'sessions#new'
  get '/micropost/new', to: 'microposts#new'

  post '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/admin/microposts', to: 'admin/microposts#index'
  get '/admin/users', to: 'admin/users#index'

  resources :users
  resources :microposts
  resources  :account_activations, only: [:edit]
  resources  :password_resets, only: [:new, :create, :edit, :update]

  namespace :admin do
    resources :microposts
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
