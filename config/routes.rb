Rails.application.routes.draw do
  root 'memes#index'

  resources :memes do
    resources :reviews
  end

  resources :users
  get 'signup' => 'users#new'
end
