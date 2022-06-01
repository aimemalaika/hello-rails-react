Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :greattings, only: [:index, :show]
    end
  end

  root 'static#index'
end
