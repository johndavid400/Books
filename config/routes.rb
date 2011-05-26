Books::Application.routes.draw do |map|
 
  match '/' => 'books#index'

  resources :books do
    resources :comments
  end


end
