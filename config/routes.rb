Rails.application.routes.draw do
  root 'products#index'

  resources :products do
    resources :reviews, except: :show
  end

  resources :categories, except: :show

  devise_for :users
  resources :users
end
