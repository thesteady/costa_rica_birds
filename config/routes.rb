Rails.application.routes.draw do
  root 'pages#home'
  resources :birds, only: [:index, :new, :create, :show, :edit, :update]
  resources :locations, only: :index
end
