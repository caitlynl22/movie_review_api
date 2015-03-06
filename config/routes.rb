Rails.application.routes.draw do
  resources :movies, only: [:index, :show, :create, :update] do
    resources :reviews, only: [:index, :create]
  end

  namespace :admin do
    resources :reviews, only: [:update, :destroy]
  end
end
