Rails.application.routes.draw do
  get 'shops/show'
  devise_for :users

  root to: "pages#home"

  resources :shops, only: %i[index show] do
    resources :products, only: %i[index, show]
    resources :carts, only: %i[index show edit update destroy]
  end
  resources :carts do
    resources :items, only: %i[create edit update destroy]
  end

end
