Rails.application.routes.draw do
  devise_for :accounts


  get "/browse" => "browse#browse", as: :browse
  get "/matches" => "browse#matches", as: :matches
  post "/approve/:id" => "browse#approve", as: :approve_user
  post "/decline/:id" => "browse#decline", as: :decline_user

  root to: "public#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
