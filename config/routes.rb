Rails.application.routes.draw do
  #item routes
  get "/movies" => "items#index"
  get "/movies/:id" => "items#show"

  #favorite routes
  get "/favorites" => "favorites#index"
  get "/favorites/:id" => "favorites#show"
  # destroy "/favorites/:id" => "favorites#destroy"

  # get "/signup" => "users#new"
  # post "/users" => "users#create"
end
