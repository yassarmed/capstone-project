Rails.application.routes.draw do
  #item routes
  get "/movies" => "items#index"
  get "/movies/:id" => "items#show"



  #favorite routes
  get "/favorites" => "favorites#index"
  get "/favorites/:id" => "favorites#show"
  delete "/favorites/:id" => "favorites#delete"
  post "/favorites" => "favorites#create"
  post "/favorites/add", to: "favorites#add_to_favorites"


  # get "/signup" => "users#new"
  post "/users" => "users#create"

  #login
  post "/sessions" => "sessions#create"
end
