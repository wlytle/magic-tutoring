Rails.application.routes.draw do
  resources :professor_availabilities
  resources :apprentice_subjects
  resources :professors
  resources :conclaves, except: :new
  resources :subjects
  resources :apprentices
  resources :sessions, only: [:new, :create]
  post "/logout", to: "sessions#destroy", as: "logout"
  get "/", to: "static#welcome", as: "welcome"
  get "/intermediate", to: "static#intermediate", as: "intermediate"
  get "/subject/:id/conclave", to: "conclaves#new", as: "new_conclave"
  #post "/apprentice/:id/apprentice_subjects", to: "apprentice_subjects#create", as: "make_apprentice_subject"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
