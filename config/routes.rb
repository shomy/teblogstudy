  Rails.application.routes.draw do

  root 'top#index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
}
  resources :topics do
    collection do
      get 'admin'
    end
    resources :comments
  end

  resources :carriers do
    collection do
      get 'admin'
    end
  end
    resources :studies do
    collection do
      get 'admin'
    end
  end

  resources :blogs do
    collection do
      get 'admin'
    end
  end
  resources :users, only: [:index,:show]

  resources :relationships, only: [:create,:destroy]

  resources :conversations do
    resources :messages
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
