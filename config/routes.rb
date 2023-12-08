Rails.application.routes.draw do
  root to: 'homes#index'
  get "ntf" => "nfts#firstGacha", as: "first_gacha"
  get 'buys/index'
  get "votes" => "votes#index", as: "votes"
  post "votes" => "votes#create", as: "vote_create"
  get 'result' => "votes#result", as: "result"

  get 'login' => 'users#login', as: "login"
  resources :users
  resources :nfts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
