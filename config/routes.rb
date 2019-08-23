Rails.application.routes.draw do
  
    root to: 'recipes#index'
    devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
    
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end 

    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end 

     resources :recipes do
         put :favorite, on: :member
       end
  end 
    
  # get '/auth/github/callback', to: 'sessions#create'
  # get '/logout' => 'sessions#destroy', :as => 'logout'
  # get '/login' => 'sessions#new', :as => 'login'
  # post '/login' => 'sessions#create'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users , only: [:new, :create,:show] do 
  # end 


