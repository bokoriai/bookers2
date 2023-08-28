Rails.application.routes.draw do
  root to: "homes#top", as: "top"
  devise_for :users
  get "homes/about"
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :update]
end
