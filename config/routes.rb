Rails.application.routes.draw do
  resources :products
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get "like" => "products#like", as: :like
  get "unlike" => "products#unlike", as: :unlike

end
