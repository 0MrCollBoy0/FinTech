Rails.application.routes.draw do
  get '/admin', to: "admin#index", as: :admin
  resources :payments
  root "home#index"
  get '/home/index', to: "home#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
end