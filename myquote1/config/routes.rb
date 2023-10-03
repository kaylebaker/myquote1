Rails.application.routes.draw do
  get 'search', to: 'search#index'
  resources :categories
  resources :quote_lists
  resources :philosophers
  resources :quotes
  resources :users
  #get 'about/index'
  #get 'home/index'
  root 'home#index'
  get '/about', to: 'about#index'

  # User authentication sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # User view routes
  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex'
  get '/your-quotes', to: 'home#uquotes'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
