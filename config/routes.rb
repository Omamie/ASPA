Rails.application.routes.draw do

  resources :users do
    resources :treatments, only: [:new, :create, :destroy, :edit, :update]
  end

  resources :treatments, only: [:index, :show]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
