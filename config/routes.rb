Rails.application.routes.draw do


  root to: 'visitors#index'

  # explicitly set routing for none typical controller actions
  get  'admin', :to => 'access#menu'
  get  'access/menu'
  get  'access/login'
  post 'access/attempt_login'
  get  'access/logout'

  # gives all 8 actions on subject
  resources :users do
    member do
      get :delete
    end
  end

  resources :roles do
    member do
      get :delete
    end
  end


end
