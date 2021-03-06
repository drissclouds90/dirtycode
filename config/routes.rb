Rails.application.routes.draw do

  resources :welcome
  resources :dashboard
  resources :services

  resources :sessions
  resources :users
  resources :blogs
  resources :articles

  get 'welcome',      to: 'welcome#index'
  get 'dashboard',    to: 'dashboard#home'

  get 'signup',       to: 'users#new', as: 'signup'
  get 'login',        to: 'sessions#new', as: 'login'
  get 'logout',       to: 'sessions#destroy', as: 'logout'

  root                to: 'services#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
