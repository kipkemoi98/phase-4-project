Rails.application.routes.draw do
  resources :users
  resources :hubs
    resources :reviews
    #resources :reviews, only: [:index,:show,:destroy,:create]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/hubs", to: "hubs#index"
  post "/register_hub", to: "hubs#create"
  get "/reviews", to:"reviews#index"
  post "/hubs/:id/review", to: "reviews#create_review"
  delete "/hubs/:id/review/:id", to: "reviews#destroy"
end
