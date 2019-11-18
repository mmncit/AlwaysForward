Rails.application.routes.draw do
  resources :insurance_coverages
  resources :dependents
  resources :patients
  get 'patients/autocomplete_patient_name'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
