Rails.application.routes.draw do

  root 'pages#home'

  resources :pages, path: '', only: :show

end
