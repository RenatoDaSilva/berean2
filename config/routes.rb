require 'sidekiq/web'

Rails.application.routes.draw do

  namespace :admin do
<<<<<<< HEAD
=======
    resources :campaigns
    resources :entries
    resources :recurrings
    resources :accounts
    resources :suppliers
    resources :members
    resources :churches
>>>>>>> d89a9f238373141d0a46d518d9cb8275f0f5b8af
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  mount Sidekiq::Web => '/sidekiq'
end