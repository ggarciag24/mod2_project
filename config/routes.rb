Rails.application.routes.draw do
  resources :teams
  resources :players, only: [:index, :show]
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete "/logout", to: 'sessions#destroy'
end
