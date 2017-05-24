Rails.application.routes.draw do

  resources :services
  resources :welcome

  resources :sessions
  resources :users
  resources :blogs
  resources :articles

  get 'welcome',      to: 'welcome#index'

  get 'signup',       to: 'users#new', as: 'signup'
  get 'login',        to: 'sessions#new', as: 'login'
  get 'logout',       to: 'sessions#destroy', as: 'logout'

  root                to: 'services#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
