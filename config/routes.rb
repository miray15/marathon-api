Rails.application.routes.draw do
  get "/users" => "users#index" 
  post "/users" => "users#create"
  delete "/users" => "users#destroy"


  post "/sessions" => "sessions#create"

  resources :donation_comments
  
  delete "/donation_comments" => "donation_comments#destroy"

  resources :picture_comments
  
end
