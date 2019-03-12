Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end

  resources :habits do
    member do
      post :done
    end
  end

  resources :scoreboards, only: [:index]
end
