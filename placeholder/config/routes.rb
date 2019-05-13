Rails.application.routes.draw do
	get "users/panel", to: "projects#user_project_team"
  #get "users/panel", to: "main_page#user_projects_list"
	post "users/panel", to: "teams#create"
  post "users/panel", to: "projects#create"
  post "user/panel", to: "tasks#create"
  	resources :teams
		devise_for :users
	# devise_for :users, :controllers => { registrations: 'registrations' }
  resources :projects do
  	resources :tasks 
  end
  patch 'teams/:id/kick', to: 'teams#kick', as: 'kick_user'
  
  get '/', to: 'main_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
