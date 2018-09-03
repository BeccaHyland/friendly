Rails.application.routes.draw do
  get 'people/index'

  get 'people/show'

  # get 'dashboards/index' <-- why?
  root 'dashboards#index'

  resources :people, only: [:index]
  resources :groups, only: [:new, :create, :index], shallow: true do
    resources :people
  end

  resources :goals
  resources :person_goals do
    resources :goalposts
  end

end
