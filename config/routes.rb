Rails.application.routes.draw do
  resources :comments
  resources :ingredient_qties
  resources :ingredients
  resources :recipes
  root to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/github/callback', to: 'sessions#create'
  get 'signout' => 'sessions#destroy', :as => :signout
  resources :users 
  resources :sessions 
end

