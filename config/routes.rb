Rails.application.routes.draw do

	get "/account" => "account#index"

	get "/signup" => "users#new"
	post "/signup" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy", as: :logout
  root 'home#index'

  resources :microposts

  get "/page_not_found", to: 'static_pages#pagenotfound'
  get '*path' => redirect('/page_not_found')
end
