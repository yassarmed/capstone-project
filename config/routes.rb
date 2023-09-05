Rails.application.routes.draw do
  get "/movies" => "items#index"
end
