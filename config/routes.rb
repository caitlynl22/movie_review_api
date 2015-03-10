Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :show, :create, :update] do
      resources :reviews, only: [:index, :create]
      resources :users, defaults: { format: :json }, only: [:show, :index, :create] do
        post 'sign_in', on: :collection
        end
      end
    end
  end


  namespace :admin do
    resources :reviews, only: [:update, :destroy]
  end
end
