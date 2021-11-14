Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "homes#top"
  get "about" => "homes#about"
  resources :introductions  do
      resource :favorites, only: [:create, :destroy]
      resources :introduction_comments, only:[:create, :destroy]
    end
  resources "users", only: [:show, :edit, :update, :index]
  get "users/unsubscribe" => "users#unsubscribe"
  patch "users/withdraw" => "users#withdraw"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
