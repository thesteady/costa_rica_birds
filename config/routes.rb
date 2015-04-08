Rails.application.routes.draw do
  root 'birds#index'
  resources :birds, only: [:new, :create, :show, :edit, :update]
  resources :locations, only: :index
end
