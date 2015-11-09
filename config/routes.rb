Rails.application.routes.draw do
  resources :inventory_selections

  resources :inventories
  get 'pages/all'
  get 'pages/super_view'

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :tickets
  root 'tickets#index'
end