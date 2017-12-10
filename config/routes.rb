Rails.application.routes.draw do
  get 'sessions/new'

get '/home', to: 'static_pages#home'
get '/index', to: 'static_pages#index'
get '/test', to: 'static_pages#test'
get '/help', to: 'static_pages#help'
get '/about', to: 'static_pages#about'
get '/contact', to: 'static_pages#contact'
get '/signup', to: 'users#new'
post '/signup',  to: 'users#create'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
root 'static_pages#home'
  resources :users do
    member do
      get :following, :followers
    end
  end

resources :microposts do
    resources :comments, except: [:show, :edit]
  end
resources :relationships,       only: [:create, :destroy]

end
