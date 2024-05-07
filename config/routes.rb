Rails.application.routes.draw do
  devise_for :users
  get '/news', to: 'news#index'
  get '/news/fetch', to: 'news#fetch'
  root 'news#fetch'

  resources :news, only: [:create, :update, :destroy]
end
