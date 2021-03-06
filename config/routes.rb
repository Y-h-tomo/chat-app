Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "rooms#index"
  resources :users, only: %i[edit update]
  resources :rooms, only: %i[new create destroy] do
  resources :messages, only: %i[index create]
  end
end
