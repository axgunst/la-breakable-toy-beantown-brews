Rails.application.routes.draw do
  root 'static_pages#index'
  devise_for :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/brands", to: "static_pages#index"
  get "/brands/:id", to: "static_pages#index"
  get "/brands/:brand_id/taprooms", to: "static_pages#index"
  get "/brands/:brands_id/taprooms/:id", to: "static_pages#index"
  get "/brands/:id/taprooms/:id/taproom_reviews", to: "static_pages#index"
  get "/brands/:brand_id/beers", to: "static_pages#index"
  get "/brands/:id/beers/:id", to: "static_pages#index"
  get "/brands/taprooms/:taproom_id/beers/:beer_id/beer_reviews", to: "static_pages#index"
  get "/taprooms/:taproom_id/beers/:beer_id/beer_reviews/:id", to: "static_pages#index"
  # get "taprooms/:taproom_id/beers/new", to: "static_pages#index"

  namespace :api do
    namespace :v1 do
      resources :brands, only: [:index, :show, :create] do 
        resources :taprooms, only: [:index, :show, :create] do
          resources :taproom_reviews, only: [:create, :update, :destroy]
        resources :beers, only: [:index, :show, :create] do
          resources :beer_reviews, only: [:create, :update, :destroy]
        end
      end 
      post "/taprooms/search", to: "taprooms#search"
    end
  end
end
end 