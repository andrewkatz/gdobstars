Gdobstars::Application.routes.draw do
  resources :nominations

  post '/nominations/fail', to: 'nominations#fail'
  post '/nominations/second', to: 'nominations#second'

  resources :users

  devise_for :users, :path => '', :path_names => {
    :sign_in      => 'sign_in',
    :sign_out     => 'sign_out',
    :registration => 'sign_up',
    :sign_up      => ''
  }, :controllers => {
    :registrations => 'registrations'
  }

  root 'home#index'
end
