Rails.application.routes.draw do
  resources :posts, only: [:index, :show]

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  authenticate :user do
    ActiveAdmin.routes(self)
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
