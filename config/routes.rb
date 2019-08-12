Rails.application.routes.draw do
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout' => 'sessions#destroy', :as => 'logout'
  get '/login' => 'sessions#new', :as => 'login'
  post '/login' => 'sessions#create'
  root to: 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users , only: [:new, :create,:show] do 
  resources :recipes
  end 

  
end

