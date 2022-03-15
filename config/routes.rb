Rails.application.routes.draw do

  resources :reviews
  root "memes#index"

  resources :memes

end
