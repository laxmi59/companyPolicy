Rails.application.routes.draw do
  namespace :admin do
    get 'home/index'
    resources :roles
    resources :users
  end

  ####################           users paths start               ###################
  get 'welcome/index'
  #resources :users
  get "my_account", to: "users#show"
  get "edit_my_account/:id", to: "users#edit", as: 'edit_my_account'
  patch 'update_my_account/:id', to: 'users#update', as: 'update_my_account'
  ####################           users paths start               ###################
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
end
