Rails.application.routes.draw do
  get 'item/index'
  get 'item/show'
  get 'item/create'
  get 'item/new'
  get 'item/delete'
  get 'item/edit'
  devise_for :users
  root to: 'pages#home'

  resources :shops, only: %i[index show] do
    resources :carts, only: %i[new create edit update destroy] do
      collection do
        get :finish
      end
    end
    resources :products, only: %i[index show]
  end
  resources :carts, only: %i[index show] do
    resources :items, only: %i[create edit update destroy]
  end
end
