



Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :mangas, only: [:show, :index]
    get '/bookshelves/all', to: 'bookshelves#all'
    resources :bookshelves, only: [:index, :show, :destroy, :update, :create]

    # resources :bookshelves do
    #   collection do
    #     get :all
    #   end
    # end

  end

end
# map.resources :users, :collection => {:manage => :get}
