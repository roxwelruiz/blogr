Rails.application.routes.draw do
  root 'main_page#index'
  get '/about', to: 'main_page#about'
	get '/contact', to: 'main_page#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
