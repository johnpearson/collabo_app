CollaboApp::Application.routes.draw do
  devise_for :users
  resources :users
  resources :projects
  
  namespace :user do
    root :to => "users#home"
  end
  
  root :to => 'pages#home'
end
