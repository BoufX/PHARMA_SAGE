Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#index'
  resources :pharmacies do
    resources :orders, only: :create
  end

  resources :orders, except: :create

  get "/history", to: "orders#history", as: "history"
  get "/popup", to: "orders#popup", as: "popup"
end
