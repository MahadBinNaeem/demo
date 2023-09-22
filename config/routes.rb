Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  resources :articles do
    resources :comments
  end

=begin
  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new", as: :new_article
  get "/articles/:id", to: "articles#show", as: :article
  get "/articles/:id/edit", to: "articles#edit", as: :edit_article
  post "/articles/", to: "articles#create", as: :articles
  patch "/articles/:id", to: "articles#update"
  delete "/articles/:id", to: "articles#destroy"
=end
  #resources :articles

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #delete "/articles/:id", to: "articles#destroy"
  # Defines the root path route ("/")
  #

end
