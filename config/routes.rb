Rails.application.routes.draw do

  get "contents/index" => "contents#index"
  get "contents/new" => "contents#new"
  get "contents/:id" => "contents#show"
  get "contents/:id/edit" => "contents#edit"

  post "contents/create" => "contents#create"

  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
