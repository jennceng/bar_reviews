Rails.application.routes.draw do
  resources :bars, only: [:show]
  
  namespace :api do
    namespace :v1 do
      resources :bars, only: [:index]
    end
  end
end
