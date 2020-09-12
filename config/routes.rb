Rails.application.routes.draw do
  devise_for :users
  root "post_images#index"
  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
