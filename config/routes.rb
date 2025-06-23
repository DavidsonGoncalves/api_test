Rails.application.routes.draw do
  #resources :surveys
  resources :tickets
  resources :test_databases

  get '/ticket/index', to: 'tickets#index', as: :index_tickets
  post '/ticket/create', to: 'tickets#create', as: :create_ticket
  put '/ticket/update/:id', to: 'tickets#update', as: :update_ticket
  post '/surveys/create', to: 'surveys#create', as: :create_survey
  get '/surveys/new', to: 'surveys#new', as: :surveys_new


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
