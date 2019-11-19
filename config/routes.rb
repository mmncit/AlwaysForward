Rails.application.routes.draw do
  
  #root 'welcome#index'
  root 'patients#index'
  get 'admin', :to => 'patients#index'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :insurance_coverages do
    member do
      get :delete
    end
  end

  resources :dependents do
    member do
      get :delete
    end
  end

  resources :patients do
    member do
      get :delete
    end
  end

end
