Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  
  get '/news', to: 'news#index'
  get '/news/fetch', to: 'news#fetch'

  get 'api_docs', to: 'home#api_docs'

  

  resources :news, only: [:create, :update, :destroy]
end
