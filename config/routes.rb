Rails.application.routes.draw do
  root 'welcome#home'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resource :users, only: [:new, :create]
end
