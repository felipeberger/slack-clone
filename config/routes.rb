Rails.application.routes.draw do
  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "messages#index"
end
