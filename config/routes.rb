Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'

get '/home', to: 'static_pages#home'
get '/index', to: 'static_pages#index'
get '/address/:id', to: 'static_pages#address', as: 'address'
get '/test', to: 'static_pages#test'
get '/help', to: 'static_pages#help'
get "/about" => 'static_pages#about', as: 'about'
get '/contact', to: 'static_pages#contact'
get '/signup', to: 'users#new'
post '/signup',  to: 'users#create'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
get '/conversations', to: 'conversations#index'
root 'static_pages#home'
  resources :users do
    member do
      get :following, :followers
    end
  end

resources :microposts do
    resources :comments, except: [:show, :edit]
    resources :likes
    resources :save_posts
    
  end
resources :relationships,       only: [:create, :destroy]
resources :messages, only: [:new, :create]
resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
    post :restore
    post :mark_as_read
  end

  collection do
    delete :empty_trash
  end
end
end

