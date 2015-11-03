Rails.application.routes.draw do
  get 'pages/all'
  devise_for :users
  resources :tickets
  root 'tickets#index'
end