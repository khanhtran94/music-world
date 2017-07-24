Rails.application.routes.draw do
  devise_for :users
  root "static_pages#index"
  devise_for :users, controllers: { 
    registrations: "devise/registrations",
    sessions: "devise/sessions"
  }
  get "index", to: "static_pages#index"
  get "/home", to: "static_pages#home"
  get "/artist", to: "static_pages#artist"
  get "/track", to: "static_pages#track"
<<<<<<< HEAD
  resources :tracks
=======
>>>>>>> 65b6419a189618732766267f5097a68b4758277f
  resources :users, only: [:index, :show, :edit, :update]
end
