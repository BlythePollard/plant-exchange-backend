Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cart_plants
      resources :carts
      resources :plants
      resources :users
    end
  end
end

#to fetch all plants with regular route: http://localhost3000/plants
#with namespacing: http://localhost3000/api/v1/plants
#we will be making fetch requests to these namespaced routes from frontend!!