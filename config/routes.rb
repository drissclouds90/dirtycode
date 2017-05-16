Rails.application.routes.draw do

  #get 'sessions/new'
  resources :sessions
  resources :users
  resources :blogs
  resources :articles

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'blogs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
