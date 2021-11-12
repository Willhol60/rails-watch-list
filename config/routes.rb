Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: 'list'

  # get 'lists/:list_id/bookmarks', to: 'bookmarks#index'
  # get 'lists/:list_id/bookmarks/new', to:

  root to: 'lists#index'
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: :create
  end
  resources :bookmarks, only: :destroy
end
