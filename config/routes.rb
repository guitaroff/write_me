Rails.application.routes.draw do
  resources :messages, only: :create
  resource :home, only: :index
  root to: 'home#index'
end
