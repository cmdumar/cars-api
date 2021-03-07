Rails.application.routes.draw do
  resources :users, only: [:create], :defaults => { :format => 'json' }
  resources :sessions, only: [:create]
  resources :cars, only: [:index, :create, :show, :destroy], :defaults => { :format => 'json' } 
  resources :pictures, only: [:create, :destroy]
  resources :appointments, only: [:index, :create, :destroy], :defaults => { :format => 'json' } 
end
