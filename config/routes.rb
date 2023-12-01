Rails.application.routes.draw do
  resources :payments
  root "home#index"
  get '/home/index', to: "home#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  delete '/', to: 'home#destroy', as: :logout

end