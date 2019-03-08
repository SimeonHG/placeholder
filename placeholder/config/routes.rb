Rails.application.routes.draw do
	devise_for :users
  resources :projects do
  	resources :tasks
  end
  get '/', to: 'main_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
