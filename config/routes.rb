Rails.application.routes.draw do
  devise_for :users
  root "static_pages#index"
  get "index", to: "static_pages#index"
  get "/home", to: "static_pages#home"
  get "/artist", to: "static_pages#artist"
  get "/track", to: "static_pages#track"
  resources :users, only: [:index, :show, :edit, :update]
end
