Rails.application.routes.draw do

  get 'https://luxurycityapartments.herokuapp.com/', to: redirect('http://lcapartmentsnorwich.co.uk/', status: 301)
  get '/properties.php?search_accommodation=City_Apartment', to: redirect('/accommodation', status: 301)
  get '/property.php?property=3', to: redirect('/apartments/quayside-apartment', status: 301)
  get '/property.php?property=2', to: redirect('/apartments/samson-hercules-apartment', status: 301)
  get '/property.php?property=5', to: redirect('/apartments/greyfriars-apartments', status: 301)
  get '/where_we_are.php', to: redirect('/contact-us', status: 301)
  get '/let_your_properties.php', to: redirect('/let-your-property', status: 301)
  get '/why_norwich.php', to: redirect('/visit-norwich', status: 301)
  get '/contact.php', to: redirect('/contact-us', status: 301)
  get '/index.php', to: redirect('/', status: 301)


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



