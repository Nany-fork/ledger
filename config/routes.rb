Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  get '/balances', to: 'balances#new'
  # post '/balances', to: 'balances#new'
  resources :balances
end
