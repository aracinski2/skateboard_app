Rails.application.routes.draw do
# EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/skateboards" => "skateboards#index"
    get "/skateboards/:id" => "skateboards#show"

    post "/skateboards" => "skateboards#create"
    patch "skateboards/:id" => "skateboards#update"
    delete "skateboards/:id" => "skateboards#delete"
  end
end
