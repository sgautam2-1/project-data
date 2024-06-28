Rails.application.routes.draw do
  get 'genres/index'
  get 'genres/show'
  get 'authors/index'
  get 'authors/show'
  root 'home#index'  # Sets the root path to HomeController#index

  get 'about', to: 'pages#about'  # Route for the about page

  resources :authors, only: [:index, :show]  # Generates routes for authors index and show actions
  resources :genres, only: [:index, :show]   # Generates routes for genres index and show actions
  resources :books, only: [:index, :show]    # Generates routes for books index and show actions
# config/routes.rb

resources :authors



  # Other routes as needed
end


