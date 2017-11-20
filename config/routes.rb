Rails.application.routes.draw do
  root 'tempature#show'
  get 'get_csv', to: 'tempature#csv_temp'
end
