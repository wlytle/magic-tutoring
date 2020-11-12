Rails.application.routes.draw do
  resources :professor_availabilities, only: [:new, :create, :edit, :update]
  resources :apprentice_subjects, only: [:create, :destroy]
  resources :professors
  resources :conclaves, only: [:create, :update, :destroy]
  resources :subjects, only: [:index, :show]
  resources :apprentices, except: :index
  resources :sessions, only: [:new, :create, :destroy]
  post "/logout", to: "sessions#destroy", as: "logout"
  get "/", to: "static#welcome", as: "welcome"
  get "/about", to: "static#about", as: "about"
  get "/intermediate", to: "static#intermediate", as: "intermediate"
  get "/subject/:id/conclave", to: "conclaves#new", as: "new_conclave"
  get "/conclaves/:id/edit", to: "conclaves#edit", as: "edit_conclave"
  get "/conclaves/:id", to: "conclaves#show", as: "conclave"

  #post "/apprentice/:id/apprentice_subjects", to: "apprentice_subjects#create", as: "make_apprentice_subject"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
