Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # localhost:3000/api/v1/login
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :reviews
      resources :recipes
      resources :rec_ingreds
      resources :ingredients

      post "/login", to: "auth#create"
      post "/signup", to: "users#create"
      # get '/profile', to: 'users#profile'
    end
  end
end
