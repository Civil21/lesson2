Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  resources :sweet_products, only: %i[index show]
  get :search, to: 'sweet_products#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get :set_page, to: 'sweet_products#set_page'
  resources :categories, only: %i[index show]
end
