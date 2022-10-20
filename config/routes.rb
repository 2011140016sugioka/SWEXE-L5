Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  root 'user#index'
  resources :tweets
  root 'tweets#index'
end
