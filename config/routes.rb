Rails.application.routes.draw do

  get "lists/:id" => "lists#show"
  get "lists/new" => "lists#new"
  get "lists/:id/add" => "lists#add_page"
  post "lists/:id/add" => "lists#add"
  post "lists/create" => "lists#create"
  delete "lists/:id/destroy" => "lists#destroy"
  post "/lists/:list_id/:content_id/remove"  => "lists#remove"

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
  patch "contents/:id/update" => "contents#update"
  delete "contents/:id/destroy" => "contents#destroy"

  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
