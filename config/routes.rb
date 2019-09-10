Rails.application.routes.draw do
  resources :teams
  resources :players, only: [:index, :show]
end
