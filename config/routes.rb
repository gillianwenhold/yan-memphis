Rails.application.routes.draw do
  get "/" => "responses#new"
  # root "homepage#covid_resources"
  get "/covid_resources" => "homepage#covid_resources"
  get "/covid_resources/es" => "homepage#es_covid_resources"
  get "/home" => "homepage#home"
  get "/home/es" => "homepage#es_home"

  get "/depressed_lonely_anxious" => "resources#depressed_lonely_anxious"
  get "/entertainment_self" => "resources#entertainment_self"
  get "/entertainment_others" => "resources#entertainment_others"
  get "/education" => "resources#education"
  get "/legit_info" => "resources#legit_info"
  get "/activism" => "resources#activism"
  get "/food_water" => "resources#food_water"
  get "/internet_tech" => "resources#internet_tech"
  get "/employment_money" => "resources#employment_money"
  get "/spanish_resources" => "resources#spanish_resources"
  get "/undocumented_resources" => "resources#undocumented_resources"
  get "/childcare" => "resources#childcare"
  get "/lgbt" => "resources#lgbt"
  get "/unsafe_home" => "resources#unsafe_home"

  get "/depressed_lonely_anxious/es" => "resources#es_depressed_lonely_anxious"
  get "/education/es" => "resources#es_education"
  get "/legit_info/es" => "resources#es_legit_info"
  get "/food_water/es" => "resources#es_food_water"
  get "/internet_tech/es" => "resources#es_internet_tech"
  get "/undocumented_resources/es" => "resources#es_undocumented_resources"
  get "/lgbt/es" => "resources#es_lgbt"
  get "/unsafe_home/es" => "resources#es_unsafe_home"
  resource :responses, only: %i[new create]
  resources :options, only: %i[show]
end
