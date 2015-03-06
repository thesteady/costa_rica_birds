Rails.application.routes.draw do
  root 'birds#index'
  resources :birds, only: [:show]
  resources :locations, only: :index
end
