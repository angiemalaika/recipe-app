Rails.application.routes.draw do
  root to: 'users#new'
  #get 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/github/callback' => 'sessions#create'
  get 'signout' => 'sessions#destroy', :as => :signout
end

# Dailycoders::Application.routes.draw do
 
#   root to: "users#new"
#   get "/auth/:provider/callback" => "sessions#create"
#   get "/signout" => "sessions#destroy", :as => :signout
 
# end