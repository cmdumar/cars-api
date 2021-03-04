Rails.application.routes.draw do

  resources :users, only: [:create], :defaults => { :format => 'json' }
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resources :cars, only: [:index, :create, :show, :destroy], :defaults => { :format => 'json' } 
  resources :appointments, only: [:index, :create, :destroy], :defaults => { :format => 'json' } 
end
