Rails.application.routes.draw do
  get '/news', to: 'news#index'

  resources :news, only: [:create, :update, :destroy]
end
