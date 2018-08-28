Demo::Application.routes.draw do

resources :sessions
resources :questions do
	resources :answers , only: [:create] do
  		resources :votes , only: [:create]do
  			collection do 
  				post :create
  			end 
  		end
  	end
end
  get "home" => "questions#index"
  get "log_out" => "sessions#destroy"
  get "log_in" => "sessions#new"

end
