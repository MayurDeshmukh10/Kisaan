Rails.application.routes.draw do

  resources :farmer_instruments

  resources :farmers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rent_details
  #get '/farmer_instruments/stats/:id', to: 'farmer_instruments_stats#rent_count'
end
 