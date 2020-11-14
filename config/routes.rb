Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  resources :posts
  resources :profiles, only: [:show, :new, :edit, :create, :update]
end
