Webman::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  #devise_for :users  devise_for :users, :controllers => {:sessions => "sessions"}
  devise_for :users ,:controllers => { :registrations => "registrations" , :sessions => "sessions" ,:passwords => 'passwords'}
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :web_articles
  resources :web_folders 
  resources :web_links

  root :to => 'home#index'
  
end
