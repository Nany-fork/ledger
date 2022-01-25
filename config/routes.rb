Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  get '/balances/report', to: 'balances#show'
  get '/balances', to: 'balances#new'
  
  resources :balances
end
