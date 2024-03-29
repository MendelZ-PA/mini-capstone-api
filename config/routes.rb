Rails.application.routes.draw do
  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  post "/products" => "products#create"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "/orders" => "orders#index"

  get "/orders/:id" => "orders#show"

  post "/carted_products/" => "carted_products#create"
end
