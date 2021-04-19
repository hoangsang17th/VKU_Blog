Rails.application.routes.draw do
  root to: 'over#index'
  get '/about-us', to: 'over#aboutus'
  get '/users', to: 'over#users'
  get '/search', to: 'over#search'
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
