Rails.application.routes.draw do
  root "photos#index"

  # get "/users/:id" => "user#show", as: :user

  devise_for :users

  resources :users, only: :show
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
