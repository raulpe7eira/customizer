Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :contacts, :except => :show
  resources :custom_fields, :except => :show
end
