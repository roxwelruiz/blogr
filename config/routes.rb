Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => 'login', :sign_out  => 'logout' }
  
  resources :users
  resources :articles

  root 'articles#index'

  get '/about', to: 'articles#about'
	get '/contact', to: 'articles#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
