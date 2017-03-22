Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :contacts
  resources :custom_fields
end
