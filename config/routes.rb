Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :fishes do
    resources :bookings, only: [:create, :update]
  end
  resources :bookings, only: [:index]
end
