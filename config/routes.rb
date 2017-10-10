Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  resources :users_admin, controller: :users, as: :users
  root to: 'admin/dashboards#index'
end
