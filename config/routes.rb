Rails.application.routes.draw do

  resources :users, only: [:index], :defaults => { :format => 'json' } 
  resources :cars, only: [:index, :create, :show, :destroy], :defaults => { :format => 'json' } 
  resources :appointments, only: [:index, :create, :destroy], :defaults => { :format => 'json' } 
end
