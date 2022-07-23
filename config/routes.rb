Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  namespace :api, defaults: { format: 'json' } do
    namespace :v1, defaults: { format: 'json' } do
        resources :reservations, only: [:index, :create, :destroy]
        resources :users, only: [:index, :create]
        resources :items, only: [:index, :new, :create, :update, :destroy]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
