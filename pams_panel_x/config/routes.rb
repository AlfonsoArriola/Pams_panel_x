Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
        root 'landing#index'

        resources :instructors do
		end

		resources :students do
		end

		resources :courses do
		end

		resources :cohorts do
		end
end
