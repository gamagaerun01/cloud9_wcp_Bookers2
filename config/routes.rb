Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  # get 'user/:id', to: "user#show"
  resources :books, only: [:create, :index, :show, :edit, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
     
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update]
  get "home/about", to: "homes#about"
end

