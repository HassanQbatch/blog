Rails.application.routes.draw do
  get 'welcome/index'

  resources :employees do
  	get 'preview', on: :member
  end

  resources :users


  resources :articles do
  	resources :comments
  end

  root 'welcome#index'
end
