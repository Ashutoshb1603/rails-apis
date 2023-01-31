Rails.application.routes.draw do
  # get 'cats/index'
  # get 'cats/create'
  # get 'cats/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :account_block do
    resources :accounts
  end
  namespace :cat_block do
    resources :cats
  end

end
