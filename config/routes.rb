Rails.application.routes.draw do
  get "rubymemes" => "rubymemes#index"
  get "rubymemes/:id" => "rubymemes#show"
end
