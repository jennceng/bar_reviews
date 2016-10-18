Rails.application.routes.draw do
  root "home#index"

  resources :bars, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :bars, only: [:index]
    end
  end
end
