Rails.application.routes.draw do

  get 'reviews/new'
  get 'reviews/create'
  resources :users do
    resources :treatments, only: [:new, :create, :destroy, :edit, :update]
  end

  resources :treatments, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
