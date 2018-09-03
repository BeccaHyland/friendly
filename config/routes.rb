Rails.application.routes.draw do
  # get 'dashboards/index' <-- why?
  root 'dashboards#index'

  resources :people, only: [:index, :show]
  resources :groups, only: [:index, :new, :create, :edit, :destroy] do
    resources :people
  end

  resources :goals
  resources :person_goals do
    resources :goalposts
  end

end
