Rails.application.routes.draw do
  resources :contactos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "contactos#index"
end
