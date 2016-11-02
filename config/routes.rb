Rails.application.routes.draw do
  resources :arenas
  devise_for :users
  root 'chatrooms#index'
  resources :chatrooms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
