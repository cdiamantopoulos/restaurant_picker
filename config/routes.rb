Rails.application.routes.draw do

	get "/account" => "account#index"

	get "/signup" => "users#new"
	post "/signup" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy", as: :logout
  root 'home#index'
  resources :restaurants
  resources :groups

  #get "/create_group" => "groups#new"
  #post "/create_group" => "groups#create"

  #page not found stuff
  get "/page_not_found", to: 'home#page_not_found'
  get '*path' => redirect('/page_not_found')

end
