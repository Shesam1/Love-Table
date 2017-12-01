Rails.application.routes.draw do

  resources :contacts
  devise_for :users
  resources :locations
  resources :restaurant_locations
  resources :comments
  resources :posts
  resources :events
  resources :users
  resources :profiles do
    resources :interests, except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# root to: "profiles#index"
root 'home#index'

end
