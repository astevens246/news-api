Rails.application.routes.draw do
  get '/news', to: 'news#index'
end
