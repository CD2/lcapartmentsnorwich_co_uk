Rails.application.routes.draw do

  get 'apartments/show'

  devise_for :users


  namespace :admin do
    root 'pages#index'
    resources :apartments, except: [:show] do
      resources :apartment_enquiries, path: 'enquiries', only: [:index, :show, :destroy]
    end
    resources :pages, except: [:show]
    resources :blogs, except: [:show]
    resources :users, except: [:show]
    resources :enquiries, only: [:index, :show, :destroy]

  end


  root 'pages#home'

  get '/contact-us', to: 'enquiries#new'

  resources :blogs
  resources :enquiries, path: 'contact-us', only: [:create] do
    collection {get :thanks}
  end
  resources :apartment_enquiries
  resources :apartments, only: :show
  resources :pages, path: '', only: :show

end
