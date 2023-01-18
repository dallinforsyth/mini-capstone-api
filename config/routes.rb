Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/first_product_path/:id", controller: "products",
  # action: "first_product_method"

  get "/first_product_path/:id" => "products#show"

  # get "/all_product_path", controller: "products",
  # action: "all_product_method"

  get "/all_product_path" => "products#index"

end
