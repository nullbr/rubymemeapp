Rails.application.routes.draw do
  resources :categories
  root 'memes#index'

  resources :memes do
    resources :reviews
    resources :likes, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create, :destroy] 

  resources :users do
    resources :reviews, only: [:index, :edit, :destroy]
  end
  get 'signup' => 'users#new'
end
