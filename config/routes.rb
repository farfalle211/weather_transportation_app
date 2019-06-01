Rails.application.routes.draw do
  namespace :api do
    get '/cities/' => 'cities#index'
    post '/cities' => 'cities#create'
    get '/cities/:id' => 'cities#show'
    patch '/cities/:id' => 'cities#update'
    delete '/cities/:id' => 'cities#destroy'

    get '/weather_hours/' => 'weather_hours#index'
    post '/weather_hours' => 'weather_hours#create'
    get '/weather_hours/:id' => 'weather_hours#show'
    patch '/weather_hours/:id' => 'weather_hours#update'
    delete '/weather_hours/:id' => 'weather_hours#destroy'

    get '/weather_days/' => 'weather_days#index'
    post '/weather_days' => 'weather_days#create'
    get '/weather_days/:id' => 'weather_days#show'
    patch '/weather_days/:id' => 'weather_days#update'
    delete '/weather_days/:id' => 'weather_days#destroy'

    get '/weather_currentlies/' => 'weather_currentlies#index'
    post '/weather_currentlies' => 'weather_currentlies#create'
    get '/weather_currentlies/:id' => 'weather_currentlies#show'
    patch '/weather_currentlies/:id' => 'weather_currentlies#update'
    delete '/weather_currentlies/:id' => 'weather_currentlies#destroy'
  end
end
