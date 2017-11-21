Rails.application.routes.draw do
  root 'tempature#show'
  get 'temp', to: 'tempature#show'
  get 'get_csv', to: 'tempature#csv_temp'
end
