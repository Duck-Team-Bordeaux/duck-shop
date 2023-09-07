Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :shops, only: %i[index show] do
    resources :carts, only: %i[new create edit update destroy finish] do
      member do
        get :finish
      end
    end
    resources :categories do
      resources :products, only: %i[index show]
    end
  end
  resources :carts, only: %i[index show] do
    resources :items, only: %i[create edit update destroy]
  end
  resources :profils, only: %i[index show] do
    collection do
      get :duckcoin
    end
  end
  get '/dashboards_manager/users', to: 'dashboards_manager#users'
  get '/dashboards_manager/products', to: 'dashboards_manager#products'
  get '/dashboards_manager/wallet', to: 'dashboards_manager#wallet'
  get '/fun', to: 'pages#fun'
end
