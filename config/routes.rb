Rails.application.routes.draw do
  resources :movies, only: [:index, :show, :create, :update]
end
