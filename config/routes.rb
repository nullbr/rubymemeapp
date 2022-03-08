Rails.application.routes.draw do

  root "memes#index"

  get "memes", to: "memes#index"
  get "memes/:id", to: "memes#show", as: "meme"
  get "memes/:id/edit", to: "memes#edit", as: "edit_meme"
  patch "memes/:id", to: "memes#update"

end
