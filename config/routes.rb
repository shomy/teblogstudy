Rails.application.routes.draw do

  resources :topics
  resources :studies
  resources :carriers
  root 'top#index'
  resources :blogs, only: [:index, :new, :create, :edit, :update,:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
