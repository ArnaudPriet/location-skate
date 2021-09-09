Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :skates, only: :show do
    resources :rentings
  end
  resources :users, only: :show
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
