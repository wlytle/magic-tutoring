Rails.application.routes.draw do
  resources :apprentice_subjects
  resources :professors
  resources :conclaves
  resources :subjects
  resources :apprentices
  get '/', to: 'static#welcome', as: 'welcome'
  get '/inter', to: 'static#inter', as: 'enroll'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
