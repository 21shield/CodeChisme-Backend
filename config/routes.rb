Rails.application.routes.draw do
  resources :messages
  resources :chatrooms
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
