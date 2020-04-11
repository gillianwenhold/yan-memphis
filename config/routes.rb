Rails.application.routes.draw do
  root 'homepage#index'
  get '/covid_resources' => 'homepage#covid_resources'
  get '/home' => 'homepage#home'
end
