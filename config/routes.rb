Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD

=======
  resources :fish
>>>>>>> 1cbbefee7ba812cb1a065d2541e46d6a734a133b
end
