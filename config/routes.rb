Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'genres/index'
  get 'genres/show'
  get 'authors/index'
  get 'authors/show'
  get 'books/index'
  get 'books/show'

  root 'home#index'  # Sets the root path to HomeController#index
  get 'about', to: 'pages#about'  # Route for the about page

  resources :authors, only: [:index, :show]  # Generates routes for authors index and show actions
  resources :genres, only: [:index, :show]   # Generates routes for genres index and show actions
  resources :books  # Generates routes for all actions in BooksController

end

# config/routes.rb
Rails.application.routes.draw do
  get '/fetch_books', to: 'books#fetch_books', as: 'fetch_books'
  resources :books do
    collection do
      post 'fetch_from_api'
    end
  end
end
