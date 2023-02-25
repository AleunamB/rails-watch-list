Rails.application.routes.draw do
  get 'lists/index'
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:index, :show, :create, :new]
    # bookmarks same 4 destroy separate
  end

end
