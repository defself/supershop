Rails.application.routes.draw do
  root 'products#index'

  resources :products do
    resources :reviews
  end

  resources :categories

  devise_for :users
  resources :users
end
