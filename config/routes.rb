Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }
    
    resource :user, only: [:show, :update]
  end

     namespace :api, defaults: { format: 'json' } do
      namespace :v1, defaults: { format: 'json' } do
        resources :reservations, only: [:index, :create, :destroy]
        resources :users, only: [:index, :create]
        resources :items, only: [:index, :create, :update, :destroy]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
