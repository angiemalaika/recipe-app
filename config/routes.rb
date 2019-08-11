Rails.application.routes.draw do
#get 'recipes/new',to: 'recipes#new'
#post 'recipes/create', to: 'recipes#create'
#get 'recipes/index, to: recipe#index'
#get '/users/new', to: 'users#new'
#post '/users/', to: 'users#create'

# get 'recipes', to: 'recipes#show'
  # post 'recipes', to: 'recipes#create'
  # get '/recipes/new', to: 'recipes#new'
  # resources :comments
  # resources :ingredient_qties
  # resources :ingredients
  # resources :recipes
 

  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users , only: [:new, :create, :show]
  #get '/auth/github/callback', to: 'sessions#create'
  get 'signout' => 'sessions#destroy', :as => 'signout'
  get '/login' => 'sessions#new', :as => 'login'
  post '/login' => 'sessions#create'
  
  resources :recipes

  
end

