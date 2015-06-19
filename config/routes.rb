Icu::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
resources :posts do
  resources :comments
end

  root "posts#index"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
