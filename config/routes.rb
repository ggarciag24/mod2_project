Rails.application.routes.draw do
  resources :teams
  resources :players, only: [:index, :show]
  resources :users, only: [:create]
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete "/logout", to: 'sessions#destroy'
  get "/account", to: "users#new"
end
