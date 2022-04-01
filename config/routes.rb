Rails.application.routes.draw do
  root 'memes#index'

  resources :memes do
    resources :reviews
  end

  resource :session, only: [:new, :create, :destroy]

  resources :users
  get 'signup' => 'users#new'
end
