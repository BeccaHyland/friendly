Rails.application.routes.draw do
  # get 'dashboards/index' <-- why?
  root 'dashboards#index'

  resources :people
  resources :groups do
    resources :people
  end

  resources :goals
  resources :goalposts
  resources :person_goals, only: [] do
    resources :goalposts, only: [:index]
  end

  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :goals, only: [:index]
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
