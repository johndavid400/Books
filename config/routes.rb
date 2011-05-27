Books::Application.routes.draw do |map|
 
  match '/' => 'books#index'

  resources :books do
    resources :comments
  end

  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users

end

