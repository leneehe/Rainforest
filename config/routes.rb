Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resource :users, only: %i(create new)
  # resource :sessions, only: %i(create new destroy)

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end
  root to: 'products#index'
end
