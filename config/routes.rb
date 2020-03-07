Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :destroy, :show, :update]
      resources :levels, only: [:index, :create, :destroy]
      resources :scores, only: [:index, :create]

      get "scores/:user_id", to: "scores#show", as: :show_score
      delete "scores/:user_id", to: "scores#destroy", as: :delete_score
    end
  end
end
