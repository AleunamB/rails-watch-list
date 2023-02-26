Rails.application.routes.draw do
  # get 'lists/index'
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create, :new]
   # resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  # resources :reviews, only: :destroy
end
