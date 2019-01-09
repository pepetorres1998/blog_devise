Rails.application.routes.draw do
  resources :comments, only: [:edit, :update, :destroy, :index, :create]
  devise_for :users
  resources :users, only: [:show, :index, :destroy]
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  resources :categories
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
