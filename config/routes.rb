Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tests#index"

  get "/async_a", to: "tests#async_a"
  get "/async_b", to: "tests#async_b"
  get "/async_c", to: "tests#async_c"
end
