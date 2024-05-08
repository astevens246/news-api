Rails.application.routes.draw do
  devise_for :users
  root 'news#fetch'
  get '/news', to: 'news#index'
  get '/news/fetch', to: 'news#fetch'

  

  resources :news, only: [:create, :update, :destroy]
end
