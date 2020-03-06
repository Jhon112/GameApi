Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :destroy, :show]
      resources :levels, only: [:index, :create, :destroy]
      resources :scores
    end
  end
end
