Rails.application.routes.draw do
  root 'shop/home#index'

  namespace :shop do
    resources :home, only: :index
    resources :products, only: [:index, :show]
    resources :categories, only: [:index, :show]
  end

  namespace :admin, path: 'admin' do
  end
end
