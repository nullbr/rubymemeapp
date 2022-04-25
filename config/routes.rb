Rails.application.routes.draw do
  resources :categories
  root 'memes#index'

  get 'memes/filter/:filter' => 'memes#index', as: :filtered_memes

  resources :memes do
    resources :reviews
    resources :likes, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create, :destroy] 

  resources :users do
    get 'edit/:page' => 'users#edit', as: :resource_pages
  end
  get 'signup' => 'users#new'
end
