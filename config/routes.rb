Rails.application.routes.draw do
  root 'tempature#show'
  get 'temp', to: 'tempature#show'
  get 'get_csv', to: 'tempature#csv_temp'

  resources :heaters do
    resources :heater_statuses
    resources :heater_commands, only: [:show, :create, :new]
  end

  namespace :api do
    namespace :v1 do
      resources :heaters, only: [:create, :show] do
        resources :heater_statuses, only: [:create]
        resources :heater_commands, only: [:show, :index, :update]
      end
    end
  end
end
