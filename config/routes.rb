Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :posts 
  resources :users, only: [:show, :edit, :update]
  resources :prefectures 
end
