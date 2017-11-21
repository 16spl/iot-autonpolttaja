Rails.application.routes.draw do
  root 'tempature#show'
  get 'temp', to: 'tempature#show', :days => 7
  get 'get_csv', to: 'tempature#csv_temp'
end
