



Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :mangas, only: [:show, :index]
    resources :bookshelves, only: [:index, :show, :destroy, :update, :create]
    resources :mangastatus, only: [:create, :show]
    resources :mangabookshelves, only: [:show]

    post 'mangabookshelves', :to => 'mangabookshelves#toggle'
    get 'mangabookshelves', :to => 'mangabookshelves#show'
  end
end
