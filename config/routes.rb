Rails.application.routes.draw do
  devise_for :users

  resources :people do 
    resources :person_projects, only: [:new, :create, :destroy]
  end

  resources :projects

  root 'people#index'
end
