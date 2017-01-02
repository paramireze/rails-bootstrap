Rails.application.routes.draw do


  root to: 'visitors#index'

  # gives all 8 actions on subject
  resources :users do
    member do
      get :delete
    end
  end

end
