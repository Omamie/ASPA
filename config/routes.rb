Rails.application.routes.draw do
  resources :treatments do
    resources :bookings, only: [:create, :new]
  end
  get "/my_treatments", to: "treatments#my_treatments"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
