Rails.application.routes.draw do

  get 'apartments/show'

  devise_for :users


  namespace :admin do
    root 'pages#index'
    resources :apartments, except: [:show]
    resources :pages, except: [:show]
    resources :blogs, except: [:show]
    resources :users, except: [:show]

  end


  root 'pages#home'
  resources :blogs
  resources :apartments, only: :show
  resources :pages, path: '', only: :show

end
