Rails.application.routes.draw do
  resources :categories do
    resources :products, only: [:create, :destroy]
  end
  root 'categories#index'
  get 'categories/new'
end
