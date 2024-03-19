Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # get '/ola', to: 'home#welcome'
  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'home#welcome' #root define a rota '/' da nossa aplicação
end
