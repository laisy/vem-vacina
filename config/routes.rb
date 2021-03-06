Rails.application.routes.draw do
  root 'home#index'
  
  resources :usuarios
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :vacinacaos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
