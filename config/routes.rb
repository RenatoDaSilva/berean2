require 'sidekiq/web'

Rails.application.routes.draw do

  namespace :admin do
    resources :recurrings
    resources :accounts
    resources :suppliers
    resources :members
    resources :churches
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  mount Sidekiq::Web => '/sidekiq'
end