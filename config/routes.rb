Rails.application.routes.draw do
  get 'users/index'
  get 'users/follow'
  get 'users/unfollow'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index] do
    member do
      post :follow
      post :follow
    end
  end
end
