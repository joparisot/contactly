Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :contacts, only: [:index, :new, :create, :show, :edit, :update, :delete]

  resources :contacts do
    resources :comments, only: [:create]
  end
end
