Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new, :create, :show, :edit, :update]
end
