Rails.application.routes.draw do

  post "lists/:id/add" => "lists#add"
  get "lists/:id/add" => "lists#add_page"
  get "lists/new" => "lists#new"
  post "lists/create" => "lists#create"
  get "lists/:id" => "lists#show"

  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  get "signup" => "users#new"
  get "signin" => "users#signin_form"
  post "signin" => "users#signin"
  post "signout" => "users#signout"

  get "contents/index" => "contents#index"
  get "contents/new" => "contents#new"
  get "contents/:id" => "contents#show"
  get "contents/:id/edit" => "contents#edit"
  post "contents/create" => "contents#create"

  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
