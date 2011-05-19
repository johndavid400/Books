Books::Application.routes.draw do |map|
  match '/' => 'books#index'
  resources :books

end
