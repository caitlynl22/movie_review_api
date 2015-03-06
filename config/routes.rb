Rails.application.routes.draw do
  resources :movies, only: [:index, :show, :create, :update] do
    resources :reviews, only: [:index, :create]
  end

  namespace :admin do
    get '', to: 'reviews#update', as: '/'
    resources :reviews, only: [:update, :destroy]
  end
end
