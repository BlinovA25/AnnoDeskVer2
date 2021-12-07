Rails.application.routes.draw do

  resources :announcements
  resources :roles

  devise_for :users

  scope '/admin' do
    resources :users
  end

  get 'index', to: 'announcements#index'

  get 'users_path', to: 'users#index'

  get 'edit_user', to: 'users#edit'

  authenticated :user do
    root to: 'announcements#index', as: :authenticated_root
  end
  root to: 'announcements#index'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
