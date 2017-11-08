Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'public/pages#home'
  devise_for :users
  
  namespace :public do
  	get 'home', to: :home, controller: 'pages'
    get 'service', to: :service, controller: 'pages'
    get 'login', to: :login, controller: 'pages'
  end
  
  namespace :private do
  	resources :services
  	resources :comments
  	resources :classifications
    resources :services_classifications
  	get 'approve_comment', to: :approve_comment, controller: 'comments'
  end

end
