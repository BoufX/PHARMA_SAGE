Rails.application.routes.draw do
  #get 'pages/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#index'
  resources :pharmacies
  resources :orders
  get "/history", to: "orders#history", as: "history"
end
