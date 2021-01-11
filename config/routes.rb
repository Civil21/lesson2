Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'pages#index'
    resources :sweet_products, only: %i[index show]
    resources :categories, only: %i[index show]
  end

  get :search, to: 'pages#search'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
