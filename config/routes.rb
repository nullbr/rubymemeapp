Rails.application.routes.draw do

  
  resources :users
  root "memes#index"

  resources :memes do
    resources :reviews
  end

end
