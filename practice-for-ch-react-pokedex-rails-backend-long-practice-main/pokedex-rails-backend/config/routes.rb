Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    # define routes here to include them in the api namespace
      resources :pokemon, only: [:create, :index, :show, :update] do
        # get ‘types’, on: :collection
        resources :items, only: [:index, :create, :update, :destroy], shallow: true
      end
  end
end
