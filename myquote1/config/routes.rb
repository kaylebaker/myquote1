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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
