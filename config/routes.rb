Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top/main'
  resources :users
  resources :tweets
  resources :likes
  root 'users#index'
  post 'top/login'
  get 'top/logout'
end
