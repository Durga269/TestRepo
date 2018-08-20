Demo::Application.routes.draw do

resources :sessions
resources :questions do
resources :answers
end
  get "home" => "questions#index"
  get "log_out" => "sessions#destroy"
  get "log_in" => "sessions#new"

end
