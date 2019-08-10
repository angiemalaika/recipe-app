Rails.application.routes.draw do
  # resources :comments
  # resources :ingredient_qties
  # resources :ingredients
  # resources :recipes
  # get 'recipes', to: 'recipes#show', as: 'recipes'
  # post 'recipes', to: 'recipes#create'
  # get '/recipes/new', to: 'recipes#new'
  
  resources :recipes 

  #root to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/github/callback', to: 'sessions#create'
  get 'signout' => 'sessions#destroy', :as => :signout
  resources :users , only: [:new]
  
end

