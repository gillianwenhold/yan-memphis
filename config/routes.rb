Rails.application.routes.draw do
  root 'homepage#index'
  get '/covid_resources' => 'homepage#covid_resources'
  get '/home' => 'homepage#home'

  get '/depressed_lonely_anxious' => 'resources#depressed_lonely_anxious'
  get '/entertainment_self' => 'resources#entertainment_self'
  get '/entertainment_others' => 'resources#entertainment_others'
  get '/education' => 'resources#education'
end
