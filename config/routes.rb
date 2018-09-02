Rails.application.routes.draw do
  # get 'dashboards/index' <-- why?
  root 'dashboards#index'

  resources :people, only: [:index]
  resources :group do
    resources :people
  end

  resources :goals
  resources :person_goals do
    resources :goalposts
  end

end
