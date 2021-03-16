Rails.application.routes.draw do
  defaults format: :json do
    resources :users, only: [:create]
    resources :cars, only: [:index, :create, :show, :destroy]
    resources :appointments, only: [:index, :create, :destroy]
  end
  resources :pictures, only: [:index, :create, :destroy]
  resources :sessions, only: [:create]
end
