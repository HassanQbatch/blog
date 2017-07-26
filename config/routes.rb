Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  namespace :admin do
    resources :articles do
      resources :comments
    end
  end

  resources :employees do
  	get 'preview', on: :member
  end

  resources :users
  resources :posts

  resources :places, only: [:new, :create, :edit, :update, :index]

  root 'welcome#index'
end
