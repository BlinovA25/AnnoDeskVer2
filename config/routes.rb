Rails.application.routes.draw do

  devise_for :users

  resources :announcements
  resources :users
  resources :roles


  #devise_for :users
  #scope '/admin' do
  #  resources :users
  #end


  root 'announcements#index'
  get 'index', to: 'announcements#index'

  get 'users_path', to: 'users#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
