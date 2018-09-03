Rails.application.routes.draw do
  # get 'dashboards/index' <-- why?
  root 'dashboards#index'

  resources :people
  resources :groups do
    resources :people
  end

  resources :goals
  resources :person_goals, only: [] do
    resources :goalposts
  end

end
