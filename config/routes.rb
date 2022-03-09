Rails.application.routes.draw do

  root "memes#index"

  resources :memes

end
