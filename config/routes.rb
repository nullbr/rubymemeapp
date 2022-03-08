Rails.application.routes.draw do

  root "rubymemes#index"

  get "rubymemes", to: "rubymemes#index"
  get "rubymemes/:id", to: "rubymemes#show", as: "rubymeme"
end
