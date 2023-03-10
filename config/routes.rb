Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/first_product_path/:id", controller: "products",
  # action: "first_product_method"

  get "/products/:id" => "products#show"
  # get "/all_product_path", controller: "products",
  # action: "all_product_method"
  get "/products" => "products#index"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  #sign up
  post "/users" => "users#create"
  #login (create session)
  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  delete "/carted_products/:id" => "carted_products#destroy"
end
