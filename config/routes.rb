Rails.application.routes.draw do
  resources :articles

  root 'articles#index'

  get '/about', to: 'articles#about'
	get '/contact', to: 'articles#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
