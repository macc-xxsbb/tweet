Rails.application.routes.draw do
  devise_for :users
  root "posts#index" 
  resources :users, only: [:edit, :update]
  resources :posts, only: [:index, :new, :create]
 
  # get 'posts', to: 'posts#index'
  # get 'posts/new', to: 'posts#new'
  # post 'posts', to: 'posts#create'

end
