Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :reviews
      resources :recipes
      resources :rec_ingreds
      resources :ingredients
    end
  end
end
