Rails.application.routes.draw do
  root 'home#index'
  resources :contacts
  resources :custom_fields
end
