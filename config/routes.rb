Rails.application.routes.draw do

	get "/account" => "account#index"

	get "/signup" => "users#new"
	post "/signup" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy", as: :logout
  root 'home#index'
  resources :restaurants

  #page not found stuff
  get "/page_not_found", to: 'home#page_not_found'
  get '*path' => redirect('/page_not_found')

end
