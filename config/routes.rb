Rails.application.routes.draw do
  root 'birds#index'
  resources :birds, only: [:show, :edit, :update]
  resources :locations, only: :index
end
