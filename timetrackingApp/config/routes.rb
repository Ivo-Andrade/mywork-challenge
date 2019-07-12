Rails.application.routes.draw do
  get 'home/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :employees do
		collection do
			get 'search'
		end
		resources :timetracking
	end
	
	resources :geofences

	root 'welcome#index'
end
