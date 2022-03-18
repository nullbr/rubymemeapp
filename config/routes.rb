Rails.application.routes.draw do

  
  root "memes#index"

  resources :memes do
    resources :reviews
  end

end
