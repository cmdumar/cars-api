Rails.application.routes.draw do
  defaults format: :json do
    resources :users, only: [:create]
    resources :cars, only: [:index, :create, :show, :destroy]
    resources :appointments, only: [:index, :create, :destroy]
  end
  resources :sessions, only: [:create]
  resources :pictures, only: [:create, :destroy]
end
