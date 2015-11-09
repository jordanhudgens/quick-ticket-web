Rails.application.routes.draw do
  resources :inventory_selections

  resources :inventories
  get 'pages/all'

  devise_for :users
  resources :tickets
  root 'tickets#index'
end