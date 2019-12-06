Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'pages/user_profile'
  resources :treatments do
    resources :reviews, only: [:create, :new, :index]
    resources :bookings, only: [:create, :new, :show]
  end
  get "/my_treatments", to: "treatments#my_treatments"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
