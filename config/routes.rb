Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get 'apartments/show'

  devise_for :users


  namespace :admin do
    root 'pages#index'
    resources :apartments, except: [:show] do
      resources :enquiries, only: [:index, :show, :destroy]
    end
    resources :pages, except: [:show]
    resources :galleries, path: 'gallery', only: [:index, :create, :destroy]
    resources :blogs, except: [:show]
    resources :users, except: [:show]
    resources :enquiries, only: [:index, :show, :destroy]

  end


  root 'pages#home'


  get 'visit-norwich', to: 'gallery#index', as: :gallery
  resources :blogs
  get '/contact-us', to: 'enquiries#new'
  resources :enquiries, path: 'contact-us', only: [:create] do
    collection {get :thanks}
  end
  resources :apartments, only: :show
  resources :pages, path: '', only: :show

end
