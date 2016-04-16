Rails.application.routes.draw do
  root to: 'ideas#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users do
    resources :ideas
  end

  resources :ideas
end
